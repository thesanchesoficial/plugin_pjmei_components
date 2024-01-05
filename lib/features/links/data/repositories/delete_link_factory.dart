import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/delete_link.dart';
import '../usecase/remote_delete_link.dart';

DeleteLink makeRemoteDeleteLink(String id) => RemoteDeleteLink(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/link-company/$id'),
);
