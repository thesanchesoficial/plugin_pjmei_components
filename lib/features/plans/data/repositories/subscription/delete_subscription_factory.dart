import 'package:plugin_pjmei_components/features/modules/domain/usecase/delete_module.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../modules/data/usecase/remote_delete_module.dart';

DeleteModule makeRemoteDeleteSubscription(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/subscription/$id')
);