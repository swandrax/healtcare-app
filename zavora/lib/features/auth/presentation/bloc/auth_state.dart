import '../../domain/entities/user_entity.dart';

sealed class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}
class AuthAuthenticated extends AuthState {
  final UserEntity user;
  const AuthAuthenticated(this.user);
}
class AuthUnauthenticated extends AuthState {}
class AuthOtpRequired extends AuthState {
  final String email;
  const AuthOtpRequired(this.email);
}
class AuthConsentRequired extends AuthState {}   // compliance trigger
class AuthFailed extends AuthState {
  final String message;
  const AuthFailed(this.message);
}
