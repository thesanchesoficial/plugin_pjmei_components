import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/usecase/insert_company.dart';

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
        newReturnErrorMsg: true,
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
