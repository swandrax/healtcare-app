import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/export.dart';

class KeyDerivationService {
  static Uint8List deriveKey({
    required String password,
    required String salt,
    int iterations = 100000,
    int keyLength = 32,
  }) {
    final saltBytes = utf8.encode(salt);
    final passwordBytes = utf8.encode(password);

    final pkcs = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64));
    pkcs.init(Pbkdf2Parameters(
      Uint8List.fromList(saltBytes),
      iterations,
      keyLength,
    ));

    return pkcs.process(Uint8List.fromList(passwordBytes));
  }
}
