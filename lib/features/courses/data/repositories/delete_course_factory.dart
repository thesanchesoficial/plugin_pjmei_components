import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../../links/data/usecase/remote_delete_link.dart';
import '../../../links/domain/usecase/delete_link.dart';

DeleteLink makeRemoteDeleteCourse(String id) => RemoteDeleteLink(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/courses/$id'),
);
