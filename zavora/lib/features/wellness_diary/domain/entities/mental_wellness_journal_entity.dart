class MentalWellnessJournalEntity {
  final String id;
  final String plainTextJournal; // plain text inside memory only
  final int wellnessScore;
  final DateTime createdAt;
  final bool isSynced;

  const MentalWellnessJournalEntity({
    required this.id,
    required this.plainTextJournal,
    required this.wellnessScore,
    required this.createdAt,
    this.isSynced = true,
  });
}
