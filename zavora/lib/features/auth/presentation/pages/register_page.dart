import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import '../widgets/consent_modal_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _termsAccepted = false;
  bool _privacyAccepted = false;
  String _selectedRole = 'pasien'; // pasien, dokter, admin

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool canRegister = _termsAccepted && _privacyAccepted;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Account'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppColors.slate900.withValues(alpha: 0.95),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.slate800),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Create Account',
                            style: AppTypography.heading2,
                          ),
                          const SizedBox(height: 24),
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Email Address',
                              prefixIcon: Icon(Icons.email_outlined, color: AppColors.slate400),
                            ),
                            validator: (val) {
                              if (val == null || !val.contains('@')) {
                                return 'Enter a valid email address';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock_outline, color: AppColors.slate400),
                            ),
                            validator: (val) {
                              if (val == null || val.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          DropdownButtonFormField<String>(
                            initialValue: _selectedRole,
                            decoration: const InputDecoration(
                              labelText: 'Account Role',
                              prefixIcon: Icon(Icons.badge_outlined, color: AppColors.slate400),
                            ),
                            items: const [
                              DropdownMenuItem(value: 'pasien', child: Text('Pasien (Patient)')),
                              DropdownMenuItem(value: 'dokter', child: Text('Dokter (Doctor)')),
                              DropdownMenuItem(value: 'admin', child: Text('Admin (Ecosystem Manager)')),
                            ],
                            onChanged: (val) {
                              if (val != null) {
                                setState(() {
                                  _selectedRole = val;
                                });
                              }
                            },
                          ),
                          const SizedBox(height: 24),

                          // Two separate checkboxes (neither pre-checked)
                          // Checkbox 1: Terms and Conditions
                          Row(
                            children: [
                              Checkbox(
                                value: _termsAccepted,
                                activeColor: AppColors.primary,
                                onChanged: (val) {
                                  setState(() {
                                    _termsAccepted = val ?? false;
                                  });
                                },
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: _showTermsModal,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Saya menyetujui ',
                                      style: AppTypography.bodySmall,
                                      children: const [
                                        TextSpan(
                                          text: 'Syarat & Ketentuan',
                                          style: TextStyle(
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                        TextSpan(text: ' Zavora Life.'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),

                          // Checkbox 2: Privacy Policy
                          Row(
                            children: [
                              Checkbox(
                                value: _privacyAccepted,
                                activeColor: AppColors.primary,
                                onChanged: (val) {
                                  setState(() {
                                    _privacyAccepted = val ?? false;
                                  });
                                },
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: _showPrivacyModal,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Saya memahami ',
                                      style: AppTypography.bodySmall,
                                      children: const [
                                        TextSpan(
                                          text: 'Kebijakan Privasi',
                                          style: TextStyle(
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                        TextSpan(text: ' & perlindungan UU PDP.'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),

                          BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {
                              if (state is AuthAuthenticated) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Account registered: ${state.user.email}'),
                                    backgroundColor: AppColors.success,
                                  ),
                                );
                                Navigator.pop(context);
                              } else if (state is AuthOtpRequired) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Please check your email for the OTP code.'),
                                    backgroundColor: AppColors.primary,
                                  ),
                                );
                                _showOtpDialog(context, state.email);
                              } else if (state is AuthFailed) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(state.message),
                                    backgroundColor: AppColors.error,
                                  ),
                                );
                              }
                            },
                            builder: (context, state) {
                              if (state is AuthLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(color: AppColors.primary),
                                );
                              }
                              return ElevatedButton(
                                onPressed: canRegister ? _submit : null,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: canRegister ? AppColors.primary : AppColors.slate700,
                                ),
                                child: const Text('Register Patient'),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showTermsModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => ConsentModalWidget(
        title: 'Syarat & Ketentuan',
        content: 'Dengan mendaftar ke Zavora Life, Anda menyetujui seluruh ketentuan layanan klinis kami. Kami bertindak sebagai penyedia platform rekam medis elektronik terenkripsi dan konsultasi medis real-time sesuai PMK No.24/2022. Seluruh data kesehatan dienkripsi secara end-to-end.',
        onAccept: () {
          setState(() {
            _termsAccepted = true;
          });
        },
      ),
    );
  }

  void _showPrivacyModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => ConsentModalWidget(
        title: 'Kebijakan Privasi (UU PDP)',
        content: 'Sesuai dengan UU Perlindungan Data Pribadi (UU PDP) 2022 Pasal 20, kami memerlukan persetujuan eksplisit Anda untuk mengolah data medis sensitif. Data rekam medis disimpan secara aman dengan enkripsi AES-GCM-256 dan hanya dapat diakses oleh dokter yang ditunjuk dan diri Anda sendiri.',
        onAccept: () {
          setState(() {
            _privacyAccepted = true;
          });
        },
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate() && _termsAccepted && _privacyAccepted) {
      context.read<AuthBloc>().add(
            RegisterSubmitted(
              email: _emailController.text.trim(),
              password: _passwordController.text,
              role: _selectedRole,
              consented: true,
            ),
          );
    }
  }

  void _showOtpDialog(BuildContext context, String email) {
    final otpController = TextEditingController();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppColors.slate800,
        title: const Text('Verify Email', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Enter the 6-digit code sent to $email', style: const TextStyle(color: AppColors.slate300)),
            const SizedBox(height: 16),
            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              maxLength: 6,
              style: const TextStyle(color: Colors.white, letterSpacing: 8, fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: '000000',
                hintStyle: TextStyle(color: AppColors.slate500),
                counterText: '',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (otpController.text.length == 6) {
                Navigator.pop(ctx);
                context.read<AuthBloc>().add(VerifyOtpSubmitted(
                  email: email,
                  token: otpController.text,
                ));
              }
            },
            child: const Text('Verify'),
          ),
        ],
      ),
    );
  }
}

