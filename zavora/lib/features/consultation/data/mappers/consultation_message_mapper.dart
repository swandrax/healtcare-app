import '../../domain/entities/consultation_message_entity.dart';
import '../models/consultation_message_dto.dart';

extension ConsultationMessageDtoMapper on ConsultationMessageDto {
  ConsultationMessageEntity toEntity() => ConsultationMessageEntity(
        id: supabaseUuid,
        consultationId: consultationId,
        senderId: senderIdUuid,
        messageText: messageText,
        createdAt: createdAt,
        isSynced: isSynced,
      );
}

extension ConsultationMessageEntityMapper on ConsultationMessageEntity {
  ConsultationMessageDto toDto() => ConsultationMessageDto()
    ..supabaseUuid = id
    ..consultationId = consultationId
    ..senderIdUuid = senderId
    ..messageText = messageText
    ..createdAt = createdAt
    ..isSynced = isSynced;
}
