import '../../domain/entities/mental_wellness_journal_entity.dart';
import '../models/mental_wellness_journal_dto.dart';

extension MentalWellnessJournalDtoMapper on MentalWellnessJournalDto {
  MentalWellnessJournalEntity toEntity({required String plainText}) => MentalWellnessJournalEntity(
        id: supabaseUuid,
        plainTextJournal: plainText,
        wellnessScore: wellnessScore,
        createdAt: createdAt,
        isSynced: isSynced,
      );
}

extension MentalWellnessJournalEntityMapper on MentalWellnessJournalEntity {
  MentalWellnessJournalDto toDto({required String encryptedText}) => MentalWellnessJournalDto()
    ..supabaseUuid = id
    ..encryptedJournalText = encryptedText
    ..wellnessScore = wellnessScore
    ..createdAt = createdAt
    ..isSynced = isSynced;
}
