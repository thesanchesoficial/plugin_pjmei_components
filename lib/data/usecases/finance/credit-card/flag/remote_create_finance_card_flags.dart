import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteCreateFinanceCardFlags implements CreateFinanceCardFlags {
  RemoteCreateFinanceCardFlags({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceCardFlagEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get', 
        log: log,
      );
      final List temp = httpResponse['success'];
      final List<FinanceCardFlagEntity> data = [];

      temp.forEach((element) {
        data.add(FinanceCardFlagEntity.fromMap(element));
      });

      return FinanceCardFlagEntity();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}