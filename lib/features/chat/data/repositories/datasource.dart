part of '../../../apis.dart';

class _ChatApi {

  Future<List<ChatDefaultEntity>> listMessagesDefault() {
    return makeRemoteGetListChatDefault().exec();
  }

  Future<ChatDefaultEntity> insertMessageDefauilt({required Map<String, dynamic> params}) {
    return makePostChatDefault().exec(params: params);
  }

}