import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/digital_medical_record_entity.dart';
import '../../domain/repositories/i_digital_medical_record_repository.dart';

@LazySingleton(as: IDigitalMedicalRecordRepository)
class DigitalMedicalRecordRepositoryImpl implements IDigitalMedicalRecordRepository {
  @override
  Future<Either<Failure, List<DigitalMedicalRecordEntity>>> getMedicalRecords(String userId) async {
    return const Right([]);
  }

  @override
  Future<Either<Failure, DigitalMedicalRecordEntity>> saveMedicalRecord(
    DigitalMedicalRecordEntity record,
    List<int> key,
  ) async {
    return Right(record);
  }

  @override
  Future<Either<Failure, Unit>> syncOfflineRecords(List<int> key) async {
    return const Right(unit);
  }
}
