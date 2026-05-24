import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/user_consent_entity.dart';
import '../repositories/i_auth_repository.dart';

@lazySingleton
class SubmitConsentUseCase {
  final IAuthRepository repository;

  SubmitConsentUseCase(this.repository);

  Future<Either<Failure, Unit>> call({
    required UserConsentEntity consent,
  }) {
    return repository.submitConsent(consent: consent);
  }
}
