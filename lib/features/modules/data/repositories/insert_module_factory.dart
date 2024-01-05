import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/insert_module.dart';
import '../usecase/remote_insert_module.dart';

AddModule makeRemoteAddModule() => RemoteAddModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules'),
);
