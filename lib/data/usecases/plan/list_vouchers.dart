import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListVouchersPlans implements ListVouchersPlans {
  final HttpClient httpClient;
  final String url;

  RemoteListVouchersPlans({required this.httpClient, required this.url});

  @override
  Future<List<VoucherEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"]["coupons"] as List)
          .map((e) => VoucherEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
