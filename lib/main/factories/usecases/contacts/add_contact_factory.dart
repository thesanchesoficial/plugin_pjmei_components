import 'package:plugin_pjmei_components/data/usecases/contacts/remote_add_contact.dart';
import 'package:plugin_pjmei_components/domain/usecases/contacts/add_contact.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

AddContact makeRemoteAddContact() => RemoteAddContact(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/contact'));
