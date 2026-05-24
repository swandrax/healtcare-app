import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';

class CryptoService {
  static String encryptJournalText(String plainText, List<int> key) {
    final encrypter = Encrypter(AES(Key(Uint8List.fromList(key)), mode: AESMode.gcm));
    final iv = IV.fromSecureRandom(12); // Standard IV size for GCM is 12 bytes
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    return '${iv.base64}:${encrypted.base64}';
  }

  static String decryptJournalText(String encryptedText, List<int> key) {
    final parts = encryptedText.split(':');
    if (parts.length != 2) {
      throw const FormatException('Invalid encrypted text format');
    }
    final iv = IV.fromBase64(parts[0]);
    final encrypted = Encrypted.fromBase64(parts[1]);
    final encrypter = Encrypter(AES(Key(Uint8List.fromList(key)), mode: AESMode.gcm));
    return encrypter.decrypt(encrypted, iv: iv);
  }
}
