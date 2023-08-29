part of '../usecases.dart';

class _InboxApi {

  Future<CheckUserEntity> listOptionsStartChat({required Map<String, dynamic> query}) {
    return makeRemoteCheckUser(params: query).exec();
  }

}
