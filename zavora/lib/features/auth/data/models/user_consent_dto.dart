class UserConsentDto {
  final String id;
  final String userId;
  final String consentKey;
  final String version;
  final Map<String, dynamic> dataCategories;
  final String legalBasis;
  final String? ipAddress;
  final String? userAgent;
  final DateTime consentedAt;

  const UserConsentDto({
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

  factory UserConsentDto.fromJson(Map<String, dynamic> json) {
    return UserConsentDto(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      consentKey: json['consent_key'] as String,
      version: json['version'] as String,
      dataCategories: Map<String, dynamic>.from(json['data_categories'] as Map),
      legalBasis: json['legal_basis'] as String,
      ipAddress: json['ip_address'] as String?,
      userAgent: json['user_agent'] as String?,
      consentedAt: DateTime.parse(json['consented_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'consent_key': consentKey,
      'version': version,
      'data_categories': dataCategories,
      'legal_basis': legalBasis,
      'ip_address': ipAddress,
      'user_agent': userAgent,
      'consented_at': consentedAt.toIso8601String(),
    };
  }
}
