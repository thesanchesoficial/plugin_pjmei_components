import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/put_dasn_item.dart';
import '../usecase/remote_put_dasn_items.dart';

PutDasnItem makePutDasn({Map<String, dynamic>? params}) => RemotePutDasnItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/dasn', params: params),
  method: 'put'
);