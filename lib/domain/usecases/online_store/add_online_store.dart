import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddOnlineStore {
  Future<EstablishmentEntity> exec(Map params, {bool log = false});
}
