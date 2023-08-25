import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListVouchersByEstablishment implements ListVouchersByEstablishment {
  RemoteListVouchersByEstablishment({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<VoucherEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      final List<VoucherEntity> _list = [];
      httpResponse['success']['items'].map((e) {
        _list.add(VoucherEntity.fromMap(e));
      }).toList();
      return _list;
    } catch (e) {
      throw e;
    }
  }
}
