part of '../usecases.dart';

class _WhiteLabelApi {

  Future<WhiteLabelEntity> find({required String id}) {
    return makeRemoteFindWhiteLabel(id).exec();
  }

  Future<bool> deleteUser({required String whiteLabelId, required String userId}) {
    return makeRemoteDeleteUserInWhiteLabel(whiteLabelId, userId).exec();
  }

  Future<List<WhiteLabelEntity>> list() {
    return makeRemoteListWhiteLabel().exec();
  }

  Future<List<WhiteLabelEntity>> listByUser({required String id}) {
    return makeRemoteListWhiteLabelByUser(id).exec();
  }

  Future<List<UserEntity>> listTeamByWhiteLabel({required String id}) {
    return makeRemoteListTeamByWhiteLabel(id).exec();
  }

  Future<WhiteLabelEntity> insert({required WhiteLabelEntity data}) {
    return makeRemoteAddWhiteLabel().exec(data);
  }

  Future<bool> addUser({required String id, required List<String> data}) {
    return makeRemoteAddUserInWhiteLabel(id).exec(data);
  }

  Future<WhiteLabelEntity> update({required String id, required WhiteLabelEntity data}) {
    return makeRemoteUpdateWhiteLabel(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteWhiteLabel(id).exec();
  }
}