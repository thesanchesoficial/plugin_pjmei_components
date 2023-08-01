import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteRemoveProductById implements RemoveProductById {
  RemoteRemoveProductById({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec() async {
    try {
      await httpClient.request(
        url: url,
        method: 'remove',
      );
      return true;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
