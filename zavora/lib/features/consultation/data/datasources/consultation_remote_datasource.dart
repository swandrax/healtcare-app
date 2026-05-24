import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/consultation_message_dto.dart';

@lazySingleton
class ConsultationRemoteDataSource {
  final SupabaseClient _supabase;

  ConsultationRemoteDataSource([SupabaseClient? supabase])
      : _supabase = supabase ?? Supabase.instance.client;

  Stream<List<ConsultationMessageDto>> streamMessages(String consultationId) {
    return _supabase
        .from('consultation_messages')
        .stream(primaryKey: ['id'])
        .eq('consultation_id', consultationId)
        .order('created_at')
        .map((rows) => rows.map((row) => ConsultationMessageDto.fromJson(row)).toList());
  }

  Future<ConsultationMessageDto> sendMessage(ConsultationMessageDto message) async {
    final response = await _supabase
        .from('consultation_messages')
        .insert(message.toJson())
        .select()
        .single();
    return ConsultationMessageDto.fromJson(response);
  }

  Future<List<ConsultationMessageDto>> fetchMessages(String consultationId) async {
    final response = await _supabase
        .from('consultation_messages')
        .select()
        .eq('consultation_id', consultationId)
        .order('created_at');
    return (response as List)
        .map((row) => ConsultationMessageDto.fromJson(row as Map<String, dynamic>))
        .toList();
  }
}
