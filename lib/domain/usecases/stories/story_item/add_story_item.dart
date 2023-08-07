import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddStoryItem {
  Future<StoryItemEntity> exec(Map params, {bool log = false});
}
