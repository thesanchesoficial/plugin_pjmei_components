import '../../entity/story_item_entity.dart';

abstract class AddStoryItem {
  Future<StoryItemEntity> exec(StoryItemEntity params, {bool log = false});
}
