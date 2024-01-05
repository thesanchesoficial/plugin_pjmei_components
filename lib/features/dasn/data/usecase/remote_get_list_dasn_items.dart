import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/get_list_dasn_item.dart';

class RemoteGetListDasnItem implements GetListDasnItem {
  final HttpClient httpClient;
  final String url;
  final String method;

  RemoteGetListDasnItem({required this.httpClient, required this.url, this.method = 'get'});

  Future<List<DasnItemEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: method,
        newReturnErrorMsg: true,
      );
      if(httpResponse == null) {
        throw DomainError.waitingInfoSimples;
      } else if(httpResponse is String) {
        throw httpResponse;
      } else if((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']['dasn']) as List).map((e) => DasnItemEntity.fromMap(e)).toList();
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
