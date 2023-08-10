import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteUpdateFinanceCreditCard implements UpdateFinanceCreditCard {
  RemoteUpdateFinanceCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec(FinanceCreditCardEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'put',
        body: params.toMap(),
        log: log,
      );
      return httpResponse['success']['code'] == 201;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}