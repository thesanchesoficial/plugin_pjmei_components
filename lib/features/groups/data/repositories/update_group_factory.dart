import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_group.dart';
import '../usecase/update_group.dart';

UpdateGroup makeRemoteUpdateGroup(String id) => RemoteUpdateGroup(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/group/$id')
);