import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../../src/variables.dart';
import '../../domain/entity/link_entity.dart';
import '../../domain/usecase/add_link.dart';

class RemoteAddLink implements AddLink {
  RemoteAddLink({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<LinkEntity> exec(LinkEntity params, {bool log = false}) async {
    try {
      final httpResponse =
          await httpClient.request(url: url, log: log, method: 'post', body: {
        'name': params.name,
        'url': params.url,
        'company_id': companySM.company?.id,
      });
      return LinkEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
