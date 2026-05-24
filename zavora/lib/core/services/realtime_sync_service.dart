import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RealtimeSyncService {
  final SupabaseClient _supabase;
  RealtimeChannel? _profileChannel;

  RealtimeSyncService([SupabaseClient? supabase])
      : _supabase = supabase ?? Supabase.instance.client;

  void initializeRealtimeListeners() {
    debugPrint('Initializing RealtimeSyncService...');

    // Listen to changes on the public.profiles table
    _profileChannel = _supabase
        .channel('public:profiles')
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: 'profiles',
          callback: (payload) {
            debugPrint('🔥 REALTIME UPDATE RECEIVED in Flutter:');
            debugPrint('Event type: ${payload.eventType}');
            debugPrint('New record: ${payload.newRecord}');
            debugPrint('Old record: ${payload.oldRecord}');
            
            // In a full implementation, you would dispatch an event to your Bloc/Cubit here
            // e.g., getIt<ProfileBloc>().add(ProfileUpdatedEvent(payload.newRecord));
          },
        )
        .subscribe((status, [error]) {
          debugPrint('Realtime subscription status: $status');
          if (error != null) {
            debugPrint('Realtime error: $error');
          }
        });
  }

  void dispose() {
    _profileChannel?.unsubscribe();
  }
}

