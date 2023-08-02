import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddVoucherPlan implements AddVoucherPlan {
  final HttpClient httpClient;
  final String url;

  RemoteAddVoucherPlan({
    required this.httpClient,
    required this.url
  });

  @override
  Future<VoucherEntity> exec(VoucherEntity params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'post',
        body: params.toMap(),
      );
      return VoucherEntity.fromMap(httpResponse["success"]["coupon"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}