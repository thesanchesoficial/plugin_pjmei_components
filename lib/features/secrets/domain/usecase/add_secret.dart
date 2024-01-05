import '../entity/secret_entity.dart';

abstract class AddSecret {
  Future<SecretEntity> exec(SecretEntity params, {bool log = false});
}
