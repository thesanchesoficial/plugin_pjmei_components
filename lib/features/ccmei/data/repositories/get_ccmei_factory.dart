import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_ccmei.dart';
import '../usecase/remote_get_ccmei.dart';

GetCcmei makeRemoteGetCcmei() => RemoteGetCcmei(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/mei'),
);
