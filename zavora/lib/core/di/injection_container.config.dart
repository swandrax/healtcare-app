// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i16;
import 'package:supabase_flutter/supabase_flutter.dart' as _i4;

import '../../features/auth/data/datasources/auth_remote_datasource.dart'
    as _i3;
import '../../features/auth/data/repositories/auth_repository_impl.dart' as _i9;
import '../../features/auth/domain/repositories/i_auth_repository.dart' as _i8;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i18;
import '../../features/auth/domain/usecases/register_usecase.dart' as _i20;
import '../../features/auth/domain/usecases/submit_consent_usecase.dart'
    as _i21;
import '../../features/auth/domain/usecases/verify_otp_usecase.dart' as _i24;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i25;
import '../../features/consultation/data/datasources/consultation_local_datasource.dart'
    as _i26;
import '../../features/consultation/data/datasources/consultation_remote_datasource.dart'
    as _i7;
import '../../features/consultation/data/repositories/consultation_repository_impl.dart'
    as _i28;
import '../../features/consultation/domain/repositories/i_consultation_repository.dart'
    as _i27;
import '../../features/consultation/domain/usecases/send_message_usecase.dart'
    as _i29;
import '../../features/consultation/domain/usecases/stream_messages_usecase.dart'
    as _i30;
import '../../features/consultation/presentation/bloc/consultation_bloc.dart'
    as _i31;
import '../../features/digital_medical_record/data/repositories/digital_medical_record_repository_impl.dart'
    as _i11;
import '../../features/digital_medical_record/domain/repositories/i_digital_medical_record_repository.dart'
    as _i10;
import '../../features/digital_medical_record/domain/usecases/sync_offline_emr_usecase.dart'
    as _i23;
import '../../features/health_tracker/data/repositories/health_tracker_repository_impl.dart'
    as _i13;
import '../../features/health_tracker/domain/repositories/i_health_tracker_repository.dart'
    as _i12;
import '../../features/health_tracker/domain/usecases/log_health_metrics_usecase.dart'
    as _i17;
import '../../features/wellness_diary/data/repositories/wellness_diary_repository_impl.dart'
    as _i15;
import '../../features/wellness_diary/domain/repositories/i_wellness_diary_repository.dart'
    as _i14;
import '../../features/wellness_diary/domain/usecases/submit_mental_journal_usecase.dart'
    as _i22;
import '../network/connection_checker.dart' as _i5;
import '../services/realtime_sync_service.dart' as _i19;
import 'injection_container.dart' as _i32;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AuthRemoteDataSource>(
        () => _i3.AuthRemoteDataSource(gh<_i4.SupabaseClient>()));
    gh.lazySingleton<_i5.ConnectionChecker>(
        () => _i5.ConnectionChecker(gh<_i6.Connectivity>()));
    gh.lazySingleton<_i7.ConsultationRemoteDataSource>(
        () => _i7.ConsultationRemoteDataSource(gh<_i4.SupabaseClient>()));
    gh.lazySingleton<_i8.IAuthRepository>(
        () => _i9.AuthRepositoryImpl(gh<_i3.AuthRemoteDataSource>()));
    gh.lazySingleton<_i10.IDigitalMedicalRecordRepository>(
        () => _i11.DigitalMedicalRecordRepositoryImpl());
    gh.lazySingleton<_i12.IHealthTrackerRepository>(
        () => _i13.HealthTrackerRepositoryImpl());
    gh.lazySingleton<_i14.IWellnessDiaryRepository>(
        () => _i15.WellnessDiaryRepositoryImpl());
    gh.lazySingleton<_i16.Isar>(() => registerModule.isar);
    gh.lazySingleton<_i17.LogHealthMetricsUseCase>(() =>
        _i17.LogHealthMetricsUseCase(gh<_i12.IHealthTrackerRepository>()));
    gh.lazySingleton<_i18.LoginUseCase>(
        () => _i18.LoginUseCase(gh<_i8.IAuthRepository>()));
    gh.lazySingleton<_i19.RealtimeSyncService>(
        () => _i19.RealtimeSyncService(gh<_i4.SupabaseClient>()));
    gh.lazySingleton<_i20.RegisterUseCase>(
        () => _i20.RegisterUseCase(gh<_i8.IAuthRepository>()));
    gh.lazySingleton<_i21.SubmitConsentUseCase>(
        () => _i21.SubmitConsentUseCase(gh<_i8.IAuthRepository>()));
    gh.lazySingleton<_i22.SubmitMentalJournalUseCase>(() =>
        _i22.SubmitMentalJournalUseCase(gh<_i14.IWellnessDiaryRepository>()));
    gh.lazySingleton<_i4.SupabaseClient>(() => registerModule.supabaseClient);
    gh.lazySingleton<_i23.SyncOfflineEmrUseCase>(() =>
        _i23.SyncOfflineEmrUseCase(gh<_i10.IDigitalMedicalRecordRepository>()));
    gh.factory<_i24.VerifyOtpUseCase>(
        () => _i24.VerifyOtpUseCase(gh<_i8.IAuthRepository>()));
    gh.factory<_i25.AuthBloc>(() => _i25.AuthBloc(
          gh<_i18.LoginUseCase>(),
          gh<_i20.RegisterUseCase>(),
          gh<_i24.VerifyOtpUseCase>(),
          gh<_i21.SubmitConsentUseCase>(),
          gh<_i8.IAuthRepository>(),
        ));
    gh.lazySingleton<_i26.ConsultationLocalDataSource>(
        () => _i26.ConsultationLocalDataSource(gh<_i16.Isar>()));
    gh.lazySingleton<_i27.IConsultationRepository>(
        () => _i28.ConsultationRepositoryImpl(
              remoteDs: gh<_i7.ConsultationRemoteDataSource>(),
              localDs: gh<_i26.ConsultationLocalDataSource>(),
              connectionChecker: gh<_i5.ConnectionChecker>(),
            ));
    gh.lazySingleton<_i29.SendMessageUseCase>(
        () => _i29.SendMessageUseCase(gh<_i27.IConsultationRepository>()));
    gh.lazySingleton<_i30.StreamMessagesUseCase>(
        () => _i30.StreamMessagesUseCase(gh<_i27.IConsultationRepository>()));
    gh.factory<_i31.ConsultationBloc>(() => _i31.ConsultationBloc(
          gh<_i30.StreamMessagesUseCase>(),
          gh<_i29.SendMessageUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i32.RegisterModule {}
