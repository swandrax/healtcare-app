class DigitalMedicalRecordEntity {
  final String id;
  final String userId;
  final DateTime recordDate;
  final String consultationNotes;
  final List<String> prescribedMedications;
  final List<String> allergies;
  final List<String> localAttachmentPaths;
  final DateTime syncedAt;

  const DigitalMedicalRecordEntity({
    required this.id,
    required this.userId,
    required this.recordDate,
    required this.consultationNotes,
    required this.prescribedMedications,
    required this.allergies,
    required this.localAttachmentPaths,
    required this.syncedAt,
  });

  bool get isExpired {
    // PMK No.24/2022 5-year retention clock rule
    final retentionLimit = DateTime.now().subtract(const Duration(days: 5 * 365));
    return recordDate.isBefore(retentionLimit);
  }
}
