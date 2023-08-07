import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListStoryViewByOwner {
  Future<List<StoryViewEntity>> exec({bool log = false});
}
