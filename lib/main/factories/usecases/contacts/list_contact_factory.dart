import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListContacts makeRemoteListContacts() => RemoteListContacts(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact/company/${companySM.company?.id}'),
);
