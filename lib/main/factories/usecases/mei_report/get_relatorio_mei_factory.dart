import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetRelatorioMeiEntity makeRemoteGetRelatorioMei(String id, num month, num year) => RemoteGetRelatorio(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/report/month/mei/$id', params: {'month': month, 'year': year}),
);
