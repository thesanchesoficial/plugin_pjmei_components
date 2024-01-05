import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_schedule_by_ecommerce.dart';
import '../usecase/remote_list_schedule_by_ecommerce.dart';

ListScheduleByEcommerce makeRemoteListScheduleByEcommerce(String id) => RemoteListScheduleByEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/ecommerce/$id'),
);
