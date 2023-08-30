part of '../usecases.dart';

class _WhiteLabelApi {

  Future<WhiteLabelEntity> find({required String id}) {
    return makeRemoteFindWhiteLabel(id).exec();
  }

  Future<List<WhiteLabelEntity>> list() {
    return makeRemoteListWhiteLabel().exec();
  }

  Future<List<WhiteLabelEntity>> listByUser({required String id}) {
    return makeRemoteListWhiteLabelByUser(id).exec();
  }

  Future<WhiteLabelEntity> insert({required WhiteLabelEntity data}) {
    return makeRemoteAddWhiteLabel().exec(data);
  }

  Future<WhiteLabelEntity> update({required String id, required WhiteLabelEntity data}) {
    return makeRemoteUpdateWhiteLabel(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteWhiteLabel(id).exec();
  }
}