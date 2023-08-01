import 'package:plugin_pjmei_components/data/usecases/contacts/remote_list_contacts.dart';
import 'package:plugin_pjmei_components/domain/usecases/contacts/list_contacts.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListContacts makeRemoteListContacts() => RemoteListContacts(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact/${companySM.company?.id}/company'),
);
