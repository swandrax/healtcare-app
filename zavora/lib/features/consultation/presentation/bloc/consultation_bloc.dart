import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/consultation_message_entity.dart';
import '../../domain/usecases/send_message_usecase.dart';
import '../../domain/usecases/stream_messages_usecase.dart';
import 'consultation_event.dart';
import 'consultation_state.dart';

@injectable
class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  final StreamMessagesUseCase _streamMessagesUseCase;
  final SendMessageUseCase _sendMessageUseCase;
  StreamSubscription? _messagesSubscription;

  ConsultationBloc(
    this._streamMessagesUseCase,
    this._sendMessageUseCase,
  ) : super(ConsultationInitial()) {
    on<LoadMessagesRequested>(_onLoadMessagesRequested);
    on<SendMessageSubmitted>(_onSendMessageSubmitted);
  }

  Future<void> _onLoadMessagesRequested(
    LoadMessagesRequested event,
    Emitter<ConsultationState> emit,
  ) async {
    emit(ConsultationLoading());
    await _messagesSubscription?.cancel();

    _messagesSubscription = _streamMessagesUseCase(event.consultationId).listen(
      (result) {
        result.fold(
          (failure) {
            // Emits failure state or handles offline gracefully
            emit(ConsultationFailed(failure.message));
          },
          (messages) {
            emit(ConsultationStreaming(messages));
          },
        );
      },
    );
  }

  Future<void> _onSendMessageSubmitted(
    SendMessageSubmitted event,
    Emitter<ConsultationState> emit,
  ) async {
    final currentMessages = state is ConsultationStreaming
        ? (state as ConsultationStreaming).messages
        : (state is ConsultationSending ? (state as ConsultationSending).messages : <ConsultationMessageEntity>[]);

    final pendingMessage = ConsultationMessageEntity(
      id: const Uuid().v4(),
      consultationId: event.consultationId,
      senderId: event.senderId,
      messageText: event.text,
      createdAt: DateTime.now(),
      isSynced: false,
    );

    final updatedMessages = List<ConsultationMessageEntity>.from(currentMessages)..add(pendingMessage);
    emit(ConsultationSending(updatedMessages));

    final result = await _sendMessageUseCase(pendingMessage);
    result.fold(
      (failure) => emit(ConsultationFailed('Failed to send: ${failure.message}')),
      (sentMessage) {
        // Replace or refresh messages
        final finalMessages = List<ConsultationMessageEntity>.from(currentMessages)..add(sentMessage);
        emit(ConsultationStreaming(finalMessages));
      },
    );
  }

  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    return super.close();
  }
}
