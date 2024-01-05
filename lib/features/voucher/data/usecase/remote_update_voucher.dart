import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/voucher_entity.dart';
import '../../domain/usecase/update_voucher.dart';

class RemoteUpdateVoucher implements UpdateVoucher {
  RemoteUpdateVoucher({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<VoucherEntity> exec(VoucherEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['voucher'] != null) {
        return VoucherEntity.fromMap(httpResponse['success']['voucher']);
      }
      return VoucherEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
