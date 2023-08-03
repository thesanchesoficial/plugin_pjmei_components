import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListContacts makeRemoteListContacts() => RemoteListContacts(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact/${companySM.company?.id}/company'),
);
