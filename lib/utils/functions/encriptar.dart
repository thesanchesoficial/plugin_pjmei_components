import 'package:encrypt/encrypt.dart';
import 'package:flutter/services.dart';
import 'package:pointycastle/asymmetric/api.dart';

Future<String?> encriptarTexto(String? text) async {
  if (text == null) return null;

  final pubPem = await rootBundle.loadString('assets/criptografia/chave_publica.pem');
  final pubKey = RSAKeyParser().parse(pubPem) as RSAPublicKey;
  final enc = Encrypter(RSA(publicKey: pubKey, encoding: RSAEncoding.PKCS1));

  final Encrypted encrypted = enc.encrypt(text);
  return encrypted.base64;
}
