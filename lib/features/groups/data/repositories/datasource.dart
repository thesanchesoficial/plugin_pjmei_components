part of '../../../apis.dart';

class _GroupApi {

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
