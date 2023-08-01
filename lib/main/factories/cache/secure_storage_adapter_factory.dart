import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:plugin_pjmei_components/infra/cache/cache.dart';

SecureStorageAdapter makeSecureStorageAdapter() => SecureStorageAdapter(secureStorage: const FlutterSecureStorage());