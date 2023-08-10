import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteGetFinanceCreditCard implements GetFinanceCreditCard {
  RemoteGetFinanceCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceCreditCardEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      final temp = httpResponse['success']['creditCards'];
      final List<FinanceCreditCardEntity> data = (temp as List).map((e) {
        return FinanceCreditCardEntity.fromMap(e);
      }).toList();
      return data;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}