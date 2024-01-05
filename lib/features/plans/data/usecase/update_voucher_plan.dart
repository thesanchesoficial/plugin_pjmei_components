import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

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
      );
      return VoucherPlanEntity.fromMap(httpResponse["success"]["coupon"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
