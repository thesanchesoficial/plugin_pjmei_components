import '../../entity/story_item_entity.dart';

abstract class ListStoryItemByView {
  Future<List<StoryItemEntity>> exec({bool log = false});
}
