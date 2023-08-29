import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddStoryItem {
  Future<StoryItemEntity> exec(StoryItemEntity params, {bool log = false});
}
