import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_schedule.dart';
import '../usecase/remote_add_schedule.dart';

AddSchedule makeRemoteAddSchedule() => RemoteAddSchedule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/schedule'),
);
