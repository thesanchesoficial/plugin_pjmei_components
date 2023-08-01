import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateSecret {
  Future<SecretEntity> exec(SecretEntity params);
}
