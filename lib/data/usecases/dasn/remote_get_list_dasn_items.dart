import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
      }
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        if(httpResponse['error']['errors'][0]['type'] == "no_mei") {
          throw DomainError.noMei;
        }
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']['dasn']) as List).map((e) => DasnItemEntity.fromMap(e)).toList();
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
