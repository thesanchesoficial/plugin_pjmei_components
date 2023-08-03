import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddContact implements AddContact {
  RemoteAddContact({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ContactEntity> exec(ContactEntity params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ContactEntity.fromMap(httpResponse['success']['contact']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
