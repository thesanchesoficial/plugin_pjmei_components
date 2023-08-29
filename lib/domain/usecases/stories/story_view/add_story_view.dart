import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddStoryView {
  Future<StoryViewEntity> exec(StoryViewEntity params, {bool log = false});
}
