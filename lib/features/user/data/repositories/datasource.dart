part of '../../../apis.dart';

class _UserApi {

  Future<List<UserEntity>> listAll() {
    return makeRemoteListUsers().exec();
  }

  Future<UserEntity> find({required String id}) {
    return makeRemoteFindUser(id).exec();
  }

  Future<UserEntity> update({required String id, required UserEntity data}) {
    return makeRemoteUpdateUser(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteUser(id).exec();
  }

  Future<bool> removeMyAccount() {
    return makeRemoteDeleteAccount().exec();
  }
}