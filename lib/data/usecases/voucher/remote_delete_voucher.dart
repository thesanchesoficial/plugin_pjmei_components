import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDeleteVoucher implements DeleteVoucher {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteVoucher({required this.httpClient, required this.url});

  @override
  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
      );
      return httpResponse == null;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
