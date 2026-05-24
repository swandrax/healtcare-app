import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/consultation_message_entity.dart';
import '../repositories/i_consultation_repository.dart';

@lazySingleton
class StreamMessagesUseCase {
  final IConsultationRepository repository;

  StreamMessagesUseCase(this.repository);

  Stream<Either<Failure, List<ConsultationMessageEntity>>> call(String consultationId) {
    return repository.streamMessages(consultationId);
  }
}
