import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/contacts/update_contacts.dart';

class RemoteUpdateContact implements UpdateContact {
  RemoteUpdateContact({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ContactEntity> exec(ContactEntity params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
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
