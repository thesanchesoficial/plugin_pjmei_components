part of '../usecases.dart';

class _UserApi {

  // Future<UserEntity> find({required String id}) {
  //   return makeRemoteFindCompany(id).exec();
  // }

  Future<List<UserEntity>> listAll() {
    return makeRemoteListUsers().exec();
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