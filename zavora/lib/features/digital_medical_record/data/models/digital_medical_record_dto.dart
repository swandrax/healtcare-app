import 'package:isar/isar.dart';

part 'digital_medical_record_dto.g.dart';

@collection
class DigitalMedicalRecordDto {
  Id id = Isar.autoIncrement;

  @Index()
  late int localUserId;

  late String supabaseUuid;
  late DateTime recordDate;
  late String consultationNotes; // double-encrypted in CryptoService before storing
  late List<String> prescribedMedications;
  late List<String> allergies;
  late List<String> localAttachmentPaths;
  late DateTime syncedAt;
}
