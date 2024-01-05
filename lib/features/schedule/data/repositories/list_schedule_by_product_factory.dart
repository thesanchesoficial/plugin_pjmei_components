import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_schedule_by_product.dart';
import '../usecase/remote_list_schedule_by_product.dart';

ListScheduleByProduct makeRemoteListScheduleByProduct(String id) => RemoteListScheduleByProduct(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/product/$id'),
);
