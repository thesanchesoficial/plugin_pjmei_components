import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/voucher_plan_entity.dart';
import '../../domain/usecase/update_voucher_plan.dart';

class RemoteUpdateVoucherPlan implements UpdateVoucherPlan {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateVoucherPlan({required this.httpClient, required this.url});

  @override
  Future<VoucherPlanEntity> exec(VoucherPlanEntity item, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: item.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }
      return VoucherPlanEntity.fromMap(httpResponse["success"]["coupon"]);
    } catch (e) {
      throw e;
    }
  }
}
