import 'package:encrypt/encrypt.dart';
import 'package:flutter/services.dart';
import 'package:pointycastle/asymmetric/api.dart';

Future<String?> encriptarTexto(String? text) async {
  if(text == null) return null;

  final publicPem = await rootBundle.loadString('assets/criptografia/chave_publica.pem');
  final publicKey = RSAKeyParser().parse(publicPem) as RSAPublicKey;
  final encrypter = Encrypter(RSA(
    publicKey: publicKey,
    encoding: RSAEncoding.PKCS1,
  ));

  final Encrypted encrypted = encrypter.encrypt(text);
  return encrypted.base64;
}
