import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateLink {
  Future<LinkEntity> exec(LinkEntity params, {bool log = false});
}
