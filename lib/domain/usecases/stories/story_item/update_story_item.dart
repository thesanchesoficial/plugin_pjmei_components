import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateStoryItem {
  Future<StoryItemEntity> exec(Map params, {bool log = false});
}
