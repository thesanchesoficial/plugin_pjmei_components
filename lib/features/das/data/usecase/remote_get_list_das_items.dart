import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/get_list_das_item.dart';

class RemoteGetListDasItem implements GetListDasItem {
  final HttpClient httpClient;
  final String url;

  RemoteGetListDasItem({required this.httpClient, required this.url});

  Future<List<DasItemEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if(httpResponse == null) {
        throw DomainError.waitingInfoSimples;
      } else if(httpResponse is String) {
        throw httpResponse;
      } else if((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']['das']) as List).map((e) => DasItemEntity.fromMap(e)).toList();
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
