import '../../domain/entities/user_entity.dart';
import '../../domain/entities/user_consent_entity.dart';
import '../models/user_dto.dart';
import '../models/user_consent_dto.dart';

extension UserDtoMapper on UserDto {
  UserEntity toEntity() => UserEntity(
        id: id,
        email: email,
        role: role,
      );
}

extension UserEntityMapper on UserEntity {
  UserDto toDto() => UserDto(
        id: id,
        email: email,
        role: role,
      );
}

extension UserConsentDtoMapper on UserConsentDto {
  UserConsentEntity toEntity() => UserConsentEntity(
        id: id,
        userId: userId,
        consentKey: consentKey,
        version: version,
        dataCategories: dataCategories,
        legalBasis: legalBasis,
        ipAddress: ipAddress,
        userAgent: userAgent,
        consentedAt: consentedAt,
      );
}

extension UserConsentEntityMapper on UserConsentEntity {
  UserConsentDto toDto() => UserConsentDto(
        id: id,
        userId: userId,
        consentKey: consentKey,
        version: version,
        dataCategories: dataCategories,
        legalBasis: legalBasis,
        ipAddress: ipAddress,
        userAgent: userAgent,
        consentedAt: consentedAt,
      );
}
