import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/balance_entity.dart';
import '../../domain/usecase/get_balance.dart';

class RemoteGetBalance implements GetBalance {
  final HttpClient httpClient;
  final String url;
  RemoteGetBalance({required this.httpClient, required this.url});

  @override
  Future<BalanceEntity> exec({bool log = false}) async {
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
      if(httpResponse['success']['balance'] != null) {
        return BalanceEntity.fromMap(httpResponse['success']['balance']);
      } else {
        return BalanceEntity.fromMap(httpResponse['success']);
      }
    } catch (e) {
      throw e;
    }
  }
}
