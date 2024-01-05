import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_module.dart';
import '../usecase/remote_find_module.dart';

FindModule makeRemoteFindModule(String id) => RemoteFindModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules/$id'),
);
