import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/address_entity.dart';
import '../../domain/usecase/find_address.dart';

class RemoteFindAddress implements FindAddress {
  final HttpClient httpClient;
  final String url;

  RemoteFindAddress({required this.httpClient, required this.url});

  @override
  Future<AddressEntity> exec({bool log = false}) async {
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
      if(httpResponse['success']['address'] != null) {
        return AddressEntity.fromMap(httpResponse['success']['address']);
      } else {
        return AddressEntity.fromMap(httpResponse['success']);
      }
    } catch (e) {
      throw e;
    }
  }
}
