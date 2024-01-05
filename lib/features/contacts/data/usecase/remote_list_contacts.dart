import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/entity/contact_entity.dart';
import '../../domain/usecase/list_contacts.dart';

class RemoteListContacts implements ListContacts {
  RemoteListContacts({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<ContactEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      final List<ContactEntity> _list = [];
      httpResponse['success']['contacts'].map((e) {
        _list.add(ContactEntity.fromMap(e));
      }).toList();
      return _list;
    } catch (e) {
      throw e;
    }
  }
}
