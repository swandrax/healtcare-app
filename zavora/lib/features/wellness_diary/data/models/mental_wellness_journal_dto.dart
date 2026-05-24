import 'package:isar/isar.dart';

part 'mental_wellness_journal_dto.g.dart';

@collection
class MentalWellnessJournalDto {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String supabaseUuid;

  late String encryptedJournalText; // Double-encrypted using CryptoService AES-GCM
  late int wellnessScore;
  late DateTime createdAt;

  @Index()
  late bool isSynced;
}
