import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateStoryItem {
  Future<StoryItemEntity> exec(StoryItemEntity params, {bool log = false});
}
