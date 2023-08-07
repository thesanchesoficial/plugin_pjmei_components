import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateStoryView {
  Future<StoryViewEntity> exec(Map params, {bool log = false});
}
