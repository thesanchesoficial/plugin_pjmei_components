import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/chat_default_entity.dart';
import '../../domain/usecase/get_list_chat_default.dart';


class RemoteGetListChatDefault implements GetListChatDefault {
  RemoteGetListChatDefault({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<ChatDefaultEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return (httpResponse["success"]["defaultChat"] as List).map((e) => ChatDefaultEntity.fromMap(e)).toList();
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
