import '../../entity/story_view_entity.dart';

abstract class ListStoryView {
  Future<List<StoryViewEntity>> exec({bool log = false});
}
