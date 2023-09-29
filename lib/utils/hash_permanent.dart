import 'package:crypto/crypto.dart';
import 'dart:convert';

String hashList(List<String> stringList) {
  final hash = sha256.convert(utf8.encode(stringList.join()));
  return hash.toString();
}