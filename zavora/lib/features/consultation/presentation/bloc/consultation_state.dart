import '../../domain/entities/consultation_message_entity.dart';

sealed class ConsultationState {
  const ConsultationState();
}

class ConsultationInitial extends ConsultationState {}
class ConsultationLoading extends ConsultationState {}
class ConsultationStreaming extends ConsultationState {
  final List<ConsultationMessageEntity> messages;
  const ConsultationStreaming(this.messages);
}
class ConsultationSending extends ConsultationState {
  final List<ConsultationMessageEntity> messages;
  const ConsultationSending(this.messages);
}
class ConsultationSent extends ConsultationState {
  final List<ConsultationMessageEntity> messages;
  const ConsultationSent(this.messages);
}
class ConsultationFailed extends ConsultationState {
  final String errorMessage;
  const ConsultationFailed(this.errorMessage);
}
