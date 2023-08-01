import 'package:plugin_pjmei_components/data/usecases/contacts/remote_update_contact.dart';
import 'package:plugin_pjmei_components/domain/usecases/contacts/update_contacts.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

UpdateContact makeRemoteUpdateContact(String id) => RemoteUpdateContact(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/contact/$id'));
