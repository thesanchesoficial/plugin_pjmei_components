import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
