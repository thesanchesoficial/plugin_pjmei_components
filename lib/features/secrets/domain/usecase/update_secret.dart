import '../entity/secret_entity.dart';

abstract class UpdateSecret {
  Future<SecretEntity> exec(SecretEntity params, {bool log = false});
}
