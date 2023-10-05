import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateAddress implements UpdateAddress {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateAddress({required this.httpClient, required this.url});

  @override
  Future<AddressEntity> exec(AddressEntity item, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: item.toMap(),
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return AddressEntity.fromMap(httpResponse["success"]);
    } catch (e) {
      throw e;
    }
  }
}
