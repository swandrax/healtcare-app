import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/i_auth_repository.dart';

@injectable
class VerifyOtpUseCase {
  final IAuthRepository repository;

  VerifyOtpUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String token,
  }) async {
    return await repository.verifyOTP(email: email, token: token);
  }
}
