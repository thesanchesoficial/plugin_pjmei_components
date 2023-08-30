import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddWhiteLabel {
  Future<WhiteLabelEntity> exec(WhiteLabelEntity params, {bool log = false});
}
