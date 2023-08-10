import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteGetFinanceCreditCardById implements GetFinanceCreditCardById {
  RemoteGetFinanceCreditCardById({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceCreditCardEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      return FinanceCreditCardEntity.fromMap(httpResponse['success']['creditCard']);
    }
    on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}