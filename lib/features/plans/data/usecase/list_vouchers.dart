import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

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
      return (httpResponse["success"]["coupons"] as List)
          .map((e) => VoucherPlanEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
