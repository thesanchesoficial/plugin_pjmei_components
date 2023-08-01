import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateProductById implements UpdateProductById {
  RemoteUpdateProductById({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec() async {
    try {
      await httpClient.request(
        url: url,
        method: 'put',
      );
      return true;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
