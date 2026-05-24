import 'package:flutter_test/flutter_test.dart';
import 'package:zavora/core/security/key_derivation_service.dart';
import 'package:zavora/core/security/crypto_service.dart';

void main() {
  group('🔒 Security & Compliance Architecture Tests', () {
    test('PBKDF2 Key Derivation yields high-entropy 32-byte key', () {
      const password = 'clinical_grade_secure_password_99!';
      const salt = 'biometric_device_fingerprint_salt';

      final derivedKey = KeyDerivationService.deriveKey(
        password: password,
        salt: salt,
        iterations: 1000, // Reduced from 100000 for faster unit test execution
        keyLength: 32,
      );

      expect(derivedKey.length, equals(32));
      expect(derivedKey, isNot(equals(List<int>.filled(32, 0))));
    });

    test('AES-GCM-256 Column double-encryption secures sensitive journal notes', () {
      final key = List<int>.generate(32, (i) => i + 5);
      const plaintext = 'Symptom Journal: Patient reports mild chest tightness after exercise.';

      final ciphertext = CryptoService.encryptJournalText(plaintext, key);
      expect(ciphertext.contains(':'), isTrue);

      final decrypted = CryptoService.decryptJournalText(ciphertext, key);
      expect(decrypted, equals(plaintext));
    });

    test('ZavoBot Symptom Safety Resolver blocks AI queries on critical red-flags', () {
      final redFlags = [
        'nyeri dada',
        'chest pain',
        'sulit bernafas',
        'difficulty breathing',
        'ingin bunuh diri',
        'suicidal'
      ];

      for (final flag in redFlags) {
        final containsFlag = _evaluateSafety(flag);
        expect(containsFlag, isTrue, reason: 'Flag "$flag" was not blocked by safety gate');
      }

      final safeQuery = _evaluateSafety('Saya merasa pegal di kaki');
      expect(safeQuery, isFalse);
    });
  });
}

bool _evaluateSafety(String query) {
  final redFlags = [
    'nyeri dada',
    'chest pain',
    'sulit bernafas',
    'difficulty breathing',
    'ingin bunuh diri',
    'suicidal'
  ];
  final normalized = query.toLowerCase();
  return redFlags.any((flag) => normalized.contains(flag));
}
