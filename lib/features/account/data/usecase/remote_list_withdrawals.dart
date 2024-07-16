import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';
import 'package:plugin_pjmei_components/features/account/domain/entity/withdrawals_entity.dart';

import '../../domain/usecase/list_withdrawals.dart';

class RemoteListWithdrawals implements ListWithdrawals {
  RemoteListWithdrawals({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<WithdrawalsEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']) as List).map((e) => WithdrawalsEntity.fromMap(e)).toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
