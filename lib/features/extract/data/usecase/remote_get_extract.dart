import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/extract_entity.dart';
import '../../domain/usecase/get_extract.dart';

class RemoteGetExtract implements GetExtract {
  RemoteGetExtract({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ExtractEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ExtractEntity.fromMap((httpResponse['success']));
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
