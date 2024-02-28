part of '../../../../apis.dart';

class _StoriesItemApi {

  Future<StoryItemEntity> add({required StoryItemEntity data}) {
    return makeRemoteAddStoryItem().exec(data);
  }

  Future<StoryItemEntity> update({required String id, required StoryItemEntity data}) {
    return makeRemoteUpdateStoryItem(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteStoryItem(id).exec();
  }

  Future<List<StoryItemEntity>> list() {
    return makeRemoteListStoryItem().exec();
  }

  Future<List<StoryItemEntity>> listByView({required String id}) {
    return makeRemoteListStoryItemByStoryView(id).exec();
  }
}
