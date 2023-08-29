import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateStoryView {
  Future<StoryViewEntity> exec(StoryViewEntity params, {bool log = false});
}
