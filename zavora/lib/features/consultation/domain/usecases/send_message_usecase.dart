import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/consultation_message_entity.dart';
import '../repositories/i_consultation_repository.dart';

@lazySingleton
class SendMessageUseCase {
  final IConsultationRepository repository;

  SendMessageUseCase(this.repository);

  Future<Either<Failure, ConsultationMessageEntity>> call(ConsultationMessageEntity message) {
    return repository.sendMessage(message);
  }
}
