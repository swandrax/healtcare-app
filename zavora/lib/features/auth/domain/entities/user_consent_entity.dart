class UserConsentEntity {
  final String id;
  final String userId;
  final String consentKey;
  final String version;
  final Map<String, dynamic> dataCategories;
  final String legalBasis;
  final String? ipAddress;
  final String? userAgent;
  final DateTime consentedAt;

  const UserConsentEntity({
    required this.id,
    required this.userId,
    required this.consentKey,
    required this.version,
    required this.dataCategories,
    required this.legalBasis,
    this.ipAddress,
    this.userAgent,
    required this.consentedAt,
  });
}
