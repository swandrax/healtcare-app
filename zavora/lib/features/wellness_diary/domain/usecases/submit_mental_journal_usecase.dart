import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/mental_wellness_journal_entity.dart';
import '../repositories/i_wellness_diary_repository.dart';

@lazySingleton
class SubmitMentalJournalUseCase {
  final IWellnessDiaryRepository repository;

  SubmitMentalJournalUseCase(this.repository);

  Future<Either<Failure, MentalWellnessJournalEntity>> call(
    MentalWellnessJournalEntity journal,
    List<int> encryptionKey,
  ) {
    return repository.submitMentalJournal(journal, encryptionKey);
  }
}
