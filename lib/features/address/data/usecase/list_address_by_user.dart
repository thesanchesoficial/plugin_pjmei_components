import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/address_entity.dart';
import '../../domain/usecase/list_address_by_user.dart';

class RemoteListAddressByUser implements GetListAddress {
  final HttpClient httpClient;
  final String url;

  RemoteListAddressByUser({required this.httpClient, required this.url});

  @override
  Future<List<AddressEntity>> exec({bool log = false}) async {
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
      if(httpResponse["success"]['items'] != null) {
        return (httpResponse["success"]['items'] as List).map((e) => AddressEntity.fromMap(e)).toList();
      } else if(httpResponse["success"]['address'] != null) {
        return (httpResponse["success"]['address'] as List).map((e) => AddressEntity.fromMap(e)).toList();
      }
      return (httpResponse["success"] as List).map((e) => AddressEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
