import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_list_das_item.dart';
import '../usecase/remote_get_list_das_items.dart';

GetListDasItem makeUpdateListDas({Map<String, dynamic>? params}) => RemoteGetListDasItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/das', params: params),
  method: 'put'
);