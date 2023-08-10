import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetRevenue makeRemoteGetRevenue(String id, {Map<String, dynamic>? params}) => RemoteGetRevenue(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/revenue/$id/user/annual', params: params),
);