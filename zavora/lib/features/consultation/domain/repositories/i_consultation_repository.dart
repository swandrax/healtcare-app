import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../entities/consultation_message_entity.dart';

abstract class IConsultationRepository {
  Future<Either<Failure, List<ConsultationMessageEntity>>> getMessages(String consultationId);
  Future<Either<Failure, ConsultationMessageEntity>> sendMessage(ConsultationMessageEntity message);
  Stream<Either<Failure, List<ConsultationMessageEntity>>> streamMessages(String consultationId);
}
