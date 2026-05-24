class ConsultationMessageEntity {
  final String id;
  final String consultationId;
  final String senderId;
  final String messageText;
  final DateTime createdAt;
  final bool isSynced;

  const ConsultationMessageEntity({
    required this.id,
    required this.consultationId,
    required this.senderId,
    required this.messageText,
    required this.createdAt,
    this.isSynced = true,
  });
}
