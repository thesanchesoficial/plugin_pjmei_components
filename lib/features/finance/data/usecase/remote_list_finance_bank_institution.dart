import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/finance_bank_institution_entity.dart';
import '../../domain/usecase/list_finance_bank_institution.dart';

class RemoteListFinanceBankInstitution implements ListFinanceBankInstitution {
  RemoteListFinanceBankInstitution({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceBankInstitutionEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']['bankInstitution']) as List).map((e) => FinanceBankInstitutionEntity.fromMap(e)).toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}