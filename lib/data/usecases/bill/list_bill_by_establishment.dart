import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListBillByEstablishment implements ListBillByEstablishment {
  RemoteListBillByEstablishment({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<BillEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['items'] != null) {
        return ((httpResponse['success']['items']) as List).map((e) => BillEntity.fromMap(e)).toList();
      }
      return ((httpResponse['success']) as List).map((e) => BillEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
