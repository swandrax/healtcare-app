import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/user_consent_entity.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/register_usecase.dart';
import '../../domain/usecases/verify_otp_usecase.dart';
import '../../domain/usecases/submit_consent_usecase.dart';
import '../../domain/repositories/i_auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;
  final VerifyOtpUseCase _verifyOtpUseCase;
  final SubmitConsentUseCase _submitConsentUseCase;
  final IAuthRepository _authRepository;

  AuthBloc(
    this._loginUseCase,
    this._registerUseCase,
    this._verifyOtpUseCase,
    this._submitConsentUseCase,
    this._authRepository,
  ) : super(AuthInitial()) {
    on<AuthCheckRequested>(_onAuthCheckRequested);
    on<LoginSubmitted>(_onLoginSubmitted);
    on<RegisterSubmitted>(_onRegisterSubmitted);
    on<VerifyOtpSubmitted>(_onVerifyOtpSubmitted);
    on<LogoutRequested>(_onLogoutRequested);
  }

  Future<void> _onAuthCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await _authRepository.getCurrentUser();
    result.fold(
      (failure) => emit(AuthUnauthenticated()),
      (user) {
        if (user != null) {
          emit(AuthAuthenticated(user));
        } else {
          emit(AuthUnauthenticated());
        }
      },
    );
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await _loginUseCase(email: event.email, password: event.password);
    result.fold(
      (failure) => emit(AuthFailed(failure.message)),
      (user) => emit(AuthAuthenticated(user)),
    );
  }

  Future<void> _onRegisterSubmitted(
    RegisterSubmitted event,
    Emitter<AuthState> emit,
  ) async {
    if (!event.consented) {
      emit(AuthConsentRequired());
      return;
    }
    emit(AuthLoading());

    // Submit UU PDP 2022 compliant user consent first
    final consent = UserConsentEntity(
      id: const Uuid().v4(),
      userId: 'temp_pdp_uuid',
      consentKey: 'general_terms_privacy_policy',
      version: '1.0.0',
      dataCategories: const {
        'medical_record': true,
        'consultation_chat': true,
        'wellness_diary': true,
      },
      legalBasis: 'Explicit consent as per UU PDP 2022 Pasal 20',
      ipAddress: '127.0.0.1',
      userAgent: 'Flutter Client',
      consentedAt: DateTime.now(),
    );

    final consentResult = await _submitConsentUseCase(consent: consent);
    await consentResult.fold(
      (failure) async {
        emit(AuthFailed('Failed to submit compliance consent: ${failure.message}'));
      },
      (_) async {
        final regResult = await _registerUseCase(
          email: event.email,
          password: event.password,
          role: event.role,
        );
        regResult.fold(
          (failure) => emit(AuthFailed(failure.message)),
          (user) {
            if (user.role.startsWith('otp_required_')) {
              emit(AuthOtpRequired(event.email));
            } else {
              emit(AuthAuthenticated(user));
            }
          },
        );
      },
    );
  }

  Future<void> _onVerifyOtpSubmitted(
    VerifyOtpSubmitted event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await _verifyOtpUseCase(email: event.email, token: event.token);
    result.fold(
      (failure) => emit(AuthFailed(failure.message)),
      (user) => emit(AuthAuthenticated(user)),
    );
  }

  Future<void> _onLogoutRequested(
    LogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await _authRepository.logout();
    result.fold(
      (failure) => emit(AuthFailed(failure.message)),
      (_) => emit(AuthUnauthenticated()),
    );
  }
}
