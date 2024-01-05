import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_revenue.dart';
import '../usecase/remote_get_revenue.dart';

GetRevenue makeRemoteGetRevenue(String id, {Map<String, dynamic>? params}) => RemoteGetRevenue(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/revenue/$id/user/annual', params: params),
);