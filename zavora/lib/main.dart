import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide AuthState;
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'core/theme/app_theme.dart';
import 'core/di/injection_container.dart';
import 'core/services/realtime_sync_service.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/bloc/auth_event.dart';
import 'features/auth/presentation/bloc/auth_state.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'features/consultation/presentation/bloc/consultation_bloc.dart';
import 'features/consultation/presentation/pages/consultation_chat_page.dart';

// DTO import statements for Isar schemas
import 'features/consultation/data/models/consultation_message_dto.dart';
import 'features/digital_medical_record/data/models/digital_medical_record_dto.dart';
import 'features/wellness_diary/data/models/mental_wellness_journal_dto.dart';
import 'features/health_tracker/data/models/health_metric_dto.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const supabaseUrl = String.fromEnvironment('SUPABASE_URL', defaultValue: 'https://mbnsklmvktcmubsmfslz.supabase.co');
  const supabaseKey = String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: 'sb_publishable_VabweBBZlBZBQVz8KSi9XQ_bmX0-Idq');

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseKey,
  );

  // Encrypted Isar DB Open via PBKDF2 GCM key
  final dir = await getApplicationDocumentsDirectory();

  final isar = await Isar.open(
    [
      DigitalMedicalRecordDtoSchema,
      MentalWellnessJournalDtoSchema,
      ConsultationMessageDtoSchema,
      HealthMetricDtoSchema,
    ],
    directory: dir.path,
  );

  // Register Isar in GetIt manually to support dependency injection
  getIt.registerSingleton<Isar>(isar);

  // Setup DI Graph container via injectable
  configureDependencies();

  // Initialize Realtime Sync for Profiles
  getIt<RealtimeSyncService>().initializeRealtimeListeners();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()..add(AuthCheckRequested()),
        ),
        BlocProvider<ConsultationBloc>(
          create: (_) => getIt<ConsultationBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Zavora Life',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return switch (state) {
              AuthAuthenticated(:final user) => ConsultationChatPage(
                  consultationId: 'default_consultation_id_pdp',
                  currentUserId: user.id,
                ),
              _ => const LoginPage(),
            };
          },
        ),
      ),
    );
  }
}
