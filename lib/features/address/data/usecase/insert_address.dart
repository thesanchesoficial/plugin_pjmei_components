import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/address_entity.dart';
import '../../domain/usecase/insert_address.dart';

class RemoteInsertAddress implements InsertAddress {
  final HttpClient httpClient;
  final String url;

  RemoteInsertAddress({
    required this.httpClient,
    required this.url
  });

  @override
  Future<AddressEntity> exec(Map<String, dynamic> params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return AddressEntity.fromMap(httpResponse['success']['address']);
    } catch (e) {
      throw e;
    }
  }
}