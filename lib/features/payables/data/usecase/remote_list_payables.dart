import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/entity/payable_entity.dart';
import '../../domain/usecase/list_payables.dart';

class RemoteListPayables implements ListPayables {
  RemoteListPayables({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<PayableEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']) as List).map((e) => PayableEntity.fromMap(e)).toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
