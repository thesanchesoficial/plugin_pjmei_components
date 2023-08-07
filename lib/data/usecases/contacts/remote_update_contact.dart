import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateContact implements UpdateContact {
  RemoteUpdateContact({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ContactEntity> exec(ContactEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ContactEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
