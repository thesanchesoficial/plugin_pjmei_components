import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import '../../../plans/domain/usecase/get_coupon.dart';

class RemoteGetVoucher implements GetVoucher {
  RemoteGetVoucher({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<VoucherEntity> exec({bool log = false}) async {
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
      return VoucherEntity.fromMap((httpResponse['success']['coupon']));
    } catch (error) {
      throw error;
    }
  }
}
