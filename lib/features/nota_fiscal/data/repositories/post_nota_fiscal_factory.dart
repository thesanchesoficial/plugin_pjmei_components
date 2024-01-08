import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/post_notafiscal.dart';
import '../usecase/remote_post_notafiscal.dart';

PostNotaFiscal makeRemotePostNotaFiscal() => RemotePostNotaFiscal(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification')
);