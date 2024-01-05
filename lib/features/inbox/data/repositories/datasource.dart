part of '../../../../src/apis.dart';

class _InboxApi {

  Future<CheckUserEntity> listOptionsStartChat({required Map<String, dynamic> query}) {
    return makeRemoteCheckUser(params: query).exec();
  }

}
