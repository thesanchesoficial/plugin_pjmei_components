import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/put_ccmei.dart';
import '../usecase/remote_put_ccmei.dart';

PutCcmei makePutCcmei({Map<String, dynamic>? params}) => RemotePutCcmei(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/mei', params: params),
);