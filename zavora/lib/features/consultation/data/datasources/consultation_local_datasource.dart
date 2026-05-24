import 'package:isar/isar.dart';
import 'package:injectable/injectable.dart';
import '../models/consultation_message_dto.dart';

@lazySingleton
class ConsultationLocalDataSource {
  final Isar _isar;

  ConsultationLocalDataSource(this._isar);

  Future<void> cacheMessages(List<ConsultationMessageDto> messages) async {
    await _isar.writeTxn(() async {
      for (final message in messages) {
        // Query to check if already cached to avoid duplicates
        final existing = await _isar.consultationMessageDtos
            .filter()
            .supabaseUuidEqualTo(message.supabaseUuid)
            .findFirst();
        if (existing != null) {
          message.id = existing.id;
        }
        await _isar.consultationMessageDtos.put(message);
      }
    });
  }

  Future<List<ConsultationMessageDto>> getCachedMessages(String consultationId) async {
    return await _isar.consultationMessageDtos
        .filter()
        .consultationIdEqualTo(consultationId)
        .sortByCreatedAt()
        .findAll();
  }

  Future<void> cacheSingleMessage(ConsultationMessageDto message) async {
    await _isar.writeTxn(() async {
      final existing = await _isar.consultationMessageDtos
          .filter()
          .supabaseUuidEqualTo(message.supabaseUuid)
          .findFirst();
      if (existing != null) {
        message.id = existing.id;
      }
      await _isar.consultationMessageDtos.put(message);
    });
  }

  Future<List<ConsultationMessageDto>> getUnsyncedMessages() async {
    return await _isar.consultationMessageDtos
        .filter()
        .isSyncedEqualTo(false)
        .findAll();
  }
}
