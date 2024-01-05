import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../domain/usecase/update_contacts.dart';
import '../usecase/remote_update_contact.dart';

UpdateContact makeRemoteUpdateContact(String id) => RemoteUpdateContact(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact/$id'),
);
