import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddVoucherPlan implements AddVoucherPlan {
  final HttpClient httpClient;
  final String url;

  RemoteAddVoucherPlan({required this.httpClient, required this.url});

  @override
  Future<VoucherPlanEntity> exec(VoucherPlanEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
      );
      return VoucherPlanEntity.fromMap(httpResponse["success"]["coupon"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
