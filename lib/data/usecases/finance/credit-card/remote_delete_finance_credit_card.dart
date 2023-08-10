import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteDeleteFinanceCreditCard implements DeleteFinanceCreditCard {
  RemoteDeleteFinanceCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
        log: log,
      );
      return httpResponse['success']['code'] == 200;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}