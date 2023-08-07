import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListStoryItemByView {
  Future<List<StoryItemEntity>> exec({bool log = false});
}
