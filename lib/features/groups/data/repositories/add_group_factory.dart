import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_group.dart';
import '../usecase/add_group.dart';

AddGroup makeRemoteAddGroup() => RemoteAddGroup(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/group')
);