import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_schedule.dart';
import '../usecase/remote_update_schedule.dart';

UpdateSchedule makeRemoteUpdateSchedule(String id) => RemoteUpdateSchedule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule/$id'),
);
