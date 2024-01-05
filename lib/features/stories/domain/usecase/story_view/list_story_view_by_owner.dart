import '../../entity/story_view_entity.dart';

abstract class ListStoryViewByOwner {
  Future<List<StoryViewEntity>> exec({bool log = false});
}
