import '../../domain/entities/digital_medical_record_entity.dart';
import '../models/digital_medical_record_dto.dart';

extension DigitalMedicalRecordDtoMapper on DigitalMedicalRecordDto {
  DigitalMedicalRecordEntity toEntity() => DigitalMedicalRecordEntity(
        id: supabaseUuid,
        userId: localUserId.toString(),
        recordDate: recordDate,
        consultationNotes: consultationNotes,
        prescribedMedications: prescribedMedications,
        allergies: allergies,
        localAttachmentPaths: localAttachmentPaths,
        syncedAt: syncedAt,
      );
}

extension DigitalMedicalRecordEntityMapper on DigitalMedicalRecordEntity {
  DigitalMedicalRecordDto toDto() => DigitalMedicalRecordDto()
    ..supabaseUuid = id
    ..localUserId = int.tryParse(userId) ?? 0
    ..recordDate = recordDate
    ..consultationNotes = consultationNotes
    ..prescribedMedications = prescribedMedications
    ..allergies = allergies
    ..localAttachmentPaths = localAttachmentPaths
    ..syncedAt = syncedAt;
}
