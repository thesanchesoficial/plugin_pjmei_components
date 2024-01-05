import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/post_dasn_item.dart';
import '../usecase/remote_post_dasn_item.dart';

PostDasnItem makePostDasn({Map<String, dynamic>? params}) => RemotePostDasnItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/dasn', params: params),
);