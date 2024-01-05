import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../../domain/entity/finance_card_flag_entity.dart';
import '../../../../domain/usecase/credit-card/flag/list_finance_card_flags.dart';

class RemoteListFinanceCardFlags implements ListFinanceCardFlags {
  RemoteListFinanceCardFlags({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceCardFlagEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get', 
        log: log,
      );
      final List temp = httpResponse['success']['creditCardFlags'];
      final List<FinanceCardFlagEntity> data = [];

      temp.forEach((element) {
        data.add(FinanceCardFlagEntity.fromMap(element));
      });

      return data;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}