import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddSecret {
  Future<SecretEntity> exec(SecretEntity params);
}
