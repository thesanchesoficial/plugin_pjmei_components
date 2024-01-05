import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/delete_module.dart';
import '../usecase/remote_delete_module.dart';

DeleteModule makeRemoteDeleteModule(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules/$id'),
);