import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/mental_wellness_journal_entity.dart';
import '../../domain/repositories/i_wellness_diary_repository.dart';

@LazySingleton(as: IWellnessDiaryRepository)
class WellnessDiaryRepositoryImpl implements IWellnessDiaryRepository {
  @override
  Future<Either<Failure, MentalWellnessJournalEntity>> submitMentalJournal(
    MentalWellnessJournalEntity journal,
    List<int> encryptionKey,
  ) async {
    return Right(journal);
  }

  @override
  Future<Either<Failure, List<MentalWellnessJournalEntity>>> getMentalJournals(
    List<int> encryptionKey,
  ) async {
    return const Right([]);
  }
}
