import '../../entity/story_view_entity.dart';

abstract class UpdateStoryView {
  Future<StoryViewEntity> exec(StoryViewEntity params, {bool log = false});
}
