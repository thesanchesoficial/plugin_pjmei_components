import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_module.dart';
import '../usecase/remote_update_module.dart';

UpdateModule makeRemoteUpdateModule(String id) => RemoteUpdateModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules'),
);