import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/entity/contact_entity.dart';
import '../../domain/usecase/add_contact.dart';

class RemoteAddContact implements AddContact {
  RemoteAddContact({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ContactEntity> exec(ContactEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ContactEntity.fromMap(httpResponse['success']['contact']);
    } catch (e) {
      throw e;
    }
  }
}
