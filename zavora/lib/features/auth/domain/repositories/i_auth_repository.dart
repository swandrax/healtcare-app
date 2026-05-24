import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../entities/user_consent_entity.dart';

abstract class IAuthRepository {
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> register({
    required String email,
    required String password,
    required String role,
  });

  Future<Either<Failure, UserEntity>> verifyOTP({
    required String email,
    required String token,
  });

  Future<Either<Failure, Unit>> submitConsent({
    required UserConsentEntity consent,
  });

  Future<Either<Failure, UserEntity?>> getCurrentUser();

  Future<Either<Failure, Unit>> logout();
}
