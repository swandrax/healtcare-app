import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../entities/mental_wellness_journal_entity.dart';

abstract class IWellnessDiaryRepository {
  Future<Either<Failure, MentalWellnessJournalEntity>> submitMentalJournal(
    MentalWellnessJournalEntity journal,
    List<int> encryptionKey,
  );
  Future<Either<Failure, List<MentalWellnessJournalEntity>>> getMentalJournals(
    List<int> encryptionKey,
  );
}
