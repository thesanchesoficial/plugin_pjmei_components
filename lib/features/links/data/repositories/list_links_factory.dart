import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_links.dart';
import '../usecase/remote_list_links.dart';

ListLinks makeRemoteListLinks(String id) => RemoteListLinks(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/link-company/$id'),
);
