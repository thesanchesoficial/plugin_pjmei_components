import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/company/delete_company.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDeleteCompany implements DeleteCompany {
  final HttpClient httpClient;
  final String url;

  RemoteDeleteCompany({
    required this.httpClient,
    required this.url
  });

  @override
  Future<bool> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'delete',
      );
      return httpResponse["code"] == 200;
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}