import '../entity/secret_entity.dart';

abstract class ListSecrets {
  Future<List<SecretEntity>> exec({bool log = false});
}
