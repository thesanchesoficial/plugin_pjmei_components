import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_relatoriomei_entity.dart';
import '../usecase/remote_get_relatorio.dart';

GetRelatorioMeiEntity makeRemoteGetRelatorioMei(String id, num month, num year) => RemoteGetRelatorio(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/report/month/mei/$id', params: {'month': month, 'year': year}),
);
