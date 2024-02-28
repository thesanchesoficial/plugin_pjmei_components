part of '../../../../apis.dart';

class _StoriesViewApi {

  Future<StoryViewEntity> add({required StoryViewEntity data}) {
    return makeRemoteAddStoryView().exec(data);
  }

  Future<StoryViewEntity> update({required String id, required StoryViewEntity data}) {
    return makeRemoteUpdateStoryView(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteStoryView(id).exec();
  }

  Future<List<StoryViewEntity>> list() {
    return makeRemoteListStoryView().exec();
  }

  Future<List<StoryViewEntity>> listByOwner({required String id}) {
    return makeRemoteListStoryViewByOwner(id).exec();
  }
}
