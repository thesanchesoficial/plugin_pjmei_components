import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../../domain/entity/finance_card_flag_entity.dart';
import '../../../../domain/usecase/credit-card/flag/delete_finance_card_flags.dart';

class RemoteDeleteFinanceCardFlags implements DeleteFinanceCardFlags {
  RemoteDeleteFinanceCardFlags({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
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

      return false;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}