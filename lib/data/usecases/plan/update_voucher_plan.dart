import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateVoucherPlan implements UpdateVoucherPlan {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateVoucherPlan({
    required this.httpClient,
    required this.url
  });

  @override
  Future<VoucherEntity> exec(VoucherEntity item) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: item.toMap(),
      );
      return VoucherEntity.fromMap(httpResponse["success"]["coupon"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}