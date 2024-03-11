part of '../../../apis.dart';

class _ChatApi {

  Future<List<ChatDefaultEntity>> listMessagesDefault() {
    return makeRemoteGetListChatDefault().exec();
  }

  Future<ChatDefaultEntity> insertMessageDefault({required Map<String, dynamic> params}) {
    return makePostChatDefault().exec(params: params);
  }

  Future<bool> deleteMessageDefauilt({required String id}) {
    return makeRemoteDeleteChatDefault(id).exec();
  }

}