part of '../usecases.dart';

class _GroupApi {
  
  // Future<CompanyEntity> find({required String id}) {
  //   return makeRemoteFindCompany(id).exec();
  // }

  Future<GroupEntity> add({required GroupEntity data}) {
    return makeRemoteAddGroup().exec(data);
  }

  Future<GroupEntity> update({required String id, required GroupEntity data}) {
    return makeRemoteUpdateGroup(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteGroup(id).exec();
  }

  Future<List<GroupEntity>> list({required Map<String, dynamic> query}) {
    return makeRemoteListGroups(query).exec();
  }
}
