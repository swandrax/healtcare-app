sealed class AuthEvent {
  const AuthEvent();
}

class AuthCheckRequested extends AuthEvent {}

class LoginSubmitted extends AuthEvent {
  final String email;
  final String password;
  const LoginSubmitted({required this.email, required this.password});
}

class RegisterSubmitted extends AuthEvent {
  final String email;
  final String password;
  final String role;
  final bool consented;
  const RegisterSubmitted({
    required this.email,
    required this.password,
    required this.role,
    required this.consented,
  });
}

class VerifyOtpSubmitted extends AuthEvent {
  final String email;
  final String token;
  const VerifyOtpSubmitted({required this.email, required this.token});
}

class LogoutRequested extends AuthEvent {}
