import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/connection_checker.dart';
import '../../domain/entities/consultation_message_entity.dart';
import '../../domain/repositories/i_consultation_repository.dart';
import '../datasources/consultation_remote_datasource.dart';
import '../datasources/consultation_local_datasource.dart';
import '../mappers/consultation_message_mapper.dart';

@LazySingleton(as: IConsultationRepository)
class ConsultationRepositoryImpl implements IConsultationRepository {
  final ConsultationRemoteDataSource remoteDs;
  final ConsultationLocalDataSource localDs;
  final ConnectionChecker connectionChecker;

  ConsultationRepositoryImpl({
    required this.remoteDs,
    required this.localDs,
    required this.connectionChecker,
  });

  @override
  Future<Either<Failure, List<ConsultationMessageEntity>>> getMessages(
    String consultationId,
  ) async {
    if (await connectionChecker.isConnected) {
      try {
        final remote = await remoteDs.fetchMessages(consultationId);
        await localDs.cacheMessages(remote);
        return Right(remote.map((dto) => dto.toEntity()).toList());
      } on Exception catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      // Offline: serve from Isar cache
      final cached = await localDs.getCachedMessages(consultationId);
      return Right(cached.map((dto) => dto.toEntity()).toList());
    }
  }

  @override
  Future<Either<Failure, ConsultationMessageEntity>> sendMessage(
    ConsultationMessageEntity message,
  ) async {
    final dto = message.toDto();
    if (await connectionChecker.isConnected) {
      try {
        dto.isSynced = true;
        final sentDto = await remoteDs.sendMessage(dto);
        await localDs.cacheSingleMessage(sentDto);
        return Right(sentDto.toEntity());
      } on Exception {
        // Network failed midway - save locally as unsynced
        dto.isSynced = false;
        await localDs.cacheSingleMessage(dto);
        return Right(dto.toEntity());
      }
    } else {
      // Completely offline - save locally as unsynced
      dto.isSynced = false;
      await localDs.cacheSingleMessage(dto);
      return Right(dto.toEntity());
    }
  }

  @override
  Stream<Either<Failure, List<ConsultationMessageEntity>>> streamMessages(
    String consultationId,
  ) async* {
    // Start by emitting local cache
    final cached = await localDs.getCachedMessages(consultationId);
    yield Right(cached.map((dto) => dto.toEntity()).toList());

    if (await connectionChecker.isConnected) {
      yield* remoteDs.streamMessages(consultationId).map<Either<Failure, List<ConsultationMessageEntity>>>((dtos) {
        // Cache newly streamed records in background
        localDs.cacheMessages(dtos);
        return Right(dtos.map((dto) => dto.toEntity()).toList());
      }).handleError((error) {
        return Left<Failure, List<ConsultationMessageEntity>>(ServerFailure(error.toString()));
      });
    }
  }
}
