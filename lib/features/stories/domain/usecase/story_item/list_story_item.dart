import '../../entity/story_item_entity.dart';

abstract class ListStoryItem {
  Future<List<StoryItemEntity>> exec({bool log = false});
}
