import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_basic.dart';
import '../usecase/remote_get_basic.dart';

GetBasicStatistics makeRemoteGetBasicStatistics() => RemoteGetBasicStatistics(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/statistics/basic'),
);