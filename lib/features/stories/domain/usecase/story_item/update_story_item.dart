import '../../entity/story_item_entity.dart';

abstract class UpdateStoryItem {
  Future<StoryItemEntity> exec(StoryItemEntity params, {bool log = false});
}
