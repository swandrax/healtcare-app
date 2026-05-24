sealed class ConsultationEvent {
  const ConsultationEvent();
}

class LoadMessagesRequested extends ConsultationEvent {
  final String consultationId;
  const LoadMessagesRequested(this.consultationId);
}

class SendMessageSubmitted extends ConsultationEvent {
  final String consultationId;
  final String senderId;
  final String text;
  const SendMessageSubmitted({
    required this.consultationId,
    required this.senderId,
    required this.text,
  });
}
