import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/entities/extract_entity.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';

class RemoteGetBalance implements GetBalance {
  RemoteGetBalance({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ExtractEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
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
