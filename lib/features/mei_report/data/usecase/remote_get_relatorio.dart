import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../app/domain/entities/environment.dart';
import '../../domain/entity/relatorio_mei_entity.dart';
import '../../domain/usecase/get_relatoriomei_entity.dart';

class RemoteGetRelatorio implements GetRelatorioMeiEntity {
  final HttpClient? httpClient;
  final String? url;

  RemoteGetRelatorio({this.httpClient, this.url});

  Future<RelatorioMeiEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: 'get',
        headers: {
          'Content-Type': 'application/json',
          'x-api-key': Environment.current?.apiKey,
        },
      );

      return RelatorioMeiEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
