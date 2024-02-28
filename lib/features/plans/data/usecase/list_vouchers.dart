import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/voucher_plan_entity.dart';
import '../../domain/usecase/list_vouchers_plans.dart';

class RemoteListVouchersPlans implements ListVouchersPlans {
  final HttpClient httpClient;
  final String url;

  RemoteListVouchersPlans({required this.httpClient, required this.url});

  @override
  Future<List<VoucherPlanEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }
      return (httpResponse["success"]["coupons"] as List).map((e) => VoucherPlanEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
