import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../modules/data/usecase/remote_delete_module.dart';
import '../../../../modules/domain/usecase/delete_module.dart';

DeleteModule makeRemoteDeleteItemPlan(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-item/$id')
);