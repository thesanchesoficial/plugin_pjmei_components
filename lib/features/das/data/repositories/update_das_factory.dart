import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/put_das_item.dart';
import '../usecase/remote_put_das_item.dart';

PutDasItem makeUpdateListDas({Map<String, dynamic>? params}) => RemotePutDasItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/das', params: params),
);