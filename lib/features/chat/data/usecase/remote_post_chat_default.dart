import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/chat_default_entity.dart';
import '../../domain/usecase/post_chat_default.dart';

class RemotePostChatDefault implements PostChatDefault {
  RemotePostChatDefault({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ChatDefaultEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ChatDefaultEntity.fromMap(httpResponse['success']['defaultChat']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
