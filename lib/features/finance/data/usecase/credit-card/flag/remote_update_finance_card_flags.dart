import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../../domain/entity/finance_card_flag_entity.dart';
import '../../../../domain/usecase/credit-card/flag/update_finance_card_flags.dart';

class RemoteUpdateFinanceCardFlags implements UpdateFinanceCardFlags {
  RemoteUpdateFinanceCardFlags({required this.httpClient, required this.url});
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