import '../../entity/story_view_entity.dart';

abstract class AddStoryView {
  Future<StoryViewEntity> exec(StoryViewEntity params, {bool log = false});
}
