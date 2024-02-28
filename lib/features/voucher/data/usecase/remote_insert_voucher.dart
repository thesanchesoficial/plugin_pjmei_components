import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/voucher_entity.dart';
import '../../domain/usecase/insert_voucher.dart';

class RemoteAddVoucher implements AddVoucher {
  RemoteAddVoucher({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<VoucherEntity> exec(VoucherEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['coupon'] != null) {
        return VoucherEntity.fromMap(httpResponse['success']['coupon']);
      }
      return VoucherEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
