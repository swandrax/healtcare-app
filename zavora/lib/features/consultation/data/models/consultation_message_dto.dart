import 'package:isar/isar.dart';

part 'consultation_message_dto.g.dart';

@collection
class ConsultationMessageDto {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String supabaseUuid;

  late String consultationId;
  late String senderIdUuid;
  late String messageText;
  late DateTime createdAt;

  @Index()
  late bool isSynced;

  ConsultationMessageDto();

  factory ConsultationMessageDto.fromJson(Map<String, dynamic> json) {
    return ConsultationMessageDto()
      ..supabaseUuid = json['id'] as String
      ..consultationId = json['consultation_id'] as String
      ..senderIdUuid = json['sender_id'] as String
      ..messageText = json['message_text'] as String
      ..createdAt = DateTime.parse(json['created_at'] as String)
      ..isSynced = true;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': supabaseUuid,
      'consultation_id': consultationId,
      'sender_id': senderIdUuid,
      'message_text': messageText,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
