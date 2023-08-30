import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateWhiteLabel {
  Future<WhiteLabelEntity> exec(WhiteLabelEntity params, {bool log = false});
}
