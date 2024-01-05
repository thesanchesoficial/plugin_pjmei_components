import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../../../src/variables.dart';
import '../../domain/usecase/list_contacts.dart';
import '../usecase/remote_list_contacts.dart';

ListContacts makeRemoteListContacts() => RemoteListContacts(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact/company/${companySM.company?.id}'),
);
