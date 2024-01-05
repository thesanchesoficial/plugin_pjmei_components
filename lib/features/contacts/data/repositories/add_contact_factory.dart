import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../domain/usecase/add_contact.dart';
import '../usecase/remote_add_contact.dart';

AddContact makeRemoteAddContact() => RemoteAddContact(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact'),
);
