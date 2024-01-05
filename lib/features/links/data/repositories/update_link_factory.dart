import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_link.dart';
import '../usecase/remote_update_link.dart';

UpdateLink makeRemoteUpdateLink(String id) => RemoteUpdateLink(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/link-company/$id'),
);
