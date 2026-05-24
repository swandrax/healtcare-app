import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/user_dto.dart';
import '../models/user_consent_dto.dart';

@lazySingleton
class AuthRemoteDataSource {
  final SupabaseClient _supabase;

  AuthRemoteDataSource([SupabaseClient? supabase])
      : _supabase = supabase ?? Supabase.instance.client;

  Future<UserDto> login({
    required String email,
    required String password,
  }) async {
    final response = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
    if (response.user == null) {
      throw Exception('Login failed: User not found');
    }
    return UserDto(
      id: response.user!.id,
      email: response.user!.email ?? email,
      role: (response.user!.userMetadata?['role'] ?? 'pasien') as String,
    );
  }

  Future<UserDto> register({
    required String email,
    required String password,
    required String role,
  }) async {
    final response = await _supabase.auth.signUp(
      email: email,
      password: password,
      data: {'role': role},
    );
    if (response.user == null) {
      throw Exception('Registration failed');
    }
    
    // If session is null, it means email confirmation is required
    final requiresOtp = response.session == null;
    
    return UserDto(
      id: response.user!.id,
      email: response.user!.email ?? email,
      role: requiresOtp ? 'otp_required_$role' : role, // Using role string to pass state
    );
  }

  Future<UserDto> verifyOTP({
    required String email,
    required String token,
  }) async {
    final response = await _supabase.auth.verifyOTP(
      type: OtpType.signup,
      email: email,
      token: token,
    );
    if (response.user == null) {
      throw Exception('OTP Verification failed');
    }
    return UserDto(
      id: response.user!.id,
      email: response.user!.email ?? email,
      role: (response.user!.userMetadata?['role'] ?? 'pasien') as String,
    );
  }

  Future<void> submitConsent(UserConsentDto consent) async {
    await _supabase.from('user_consents').insert(consent.toJson());
  }

  Future<UserDto?> getCurrentUser() async {
    final user = _supabase.auth.currentUser;
    if (user == null) return null;
    return UserDto(
      id: user.id,
      email: user.email ?? '',
      role: (user.userMetadata?['role'] ?? 'pasien') as String,
    );
  }

  Future<void> logout() async {
    await _supabase.auth.signOut();
  }
}
