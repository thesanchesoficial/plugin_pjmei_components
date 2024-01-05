import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_list_dasn_item.dart';
import '../usecase/remote_get_list_dasn_items.dart';

GetListDasnItem makeGetListDasn({Map<String, dynamic>? params}) => RemoteGetListDasnItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/dasn', params: params)
);