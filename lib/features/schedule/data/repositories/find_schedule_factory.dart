import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_schedule.dart';
import '../usecase/remote_find_schedule.dart';

FindSchedule makeRemoteFindSchedule(String id) => RemoteFindSchedule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/$id'),
);
