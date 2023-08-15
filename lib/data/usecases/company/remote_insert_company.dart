import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteInsertCompany implements InsertCompany {
  final HttpClient httpClient;
  final String url;
  RemoteInsertCompany({required this.httpClient, required this.url});

  @override
  Future<bool> exec(Map<String, dynamic> body, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: body,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return (httpResponse["code"].toString() == '201');
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
