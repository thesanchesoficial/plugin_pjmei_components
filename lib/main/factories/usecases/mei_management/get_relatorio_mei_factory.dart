import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_get_relatorio.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/get_relatoriomei_entity.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetRelatorioMeiEntity makeRemoteGetRelatorioMei(num month, num year) =>
    RemoteGetRelatorio(
      httpClient: makeHttpAdapter(),
      url:
          '${Environment.current!.baseUrl}finance/report/month/mei/${companySM.company!.id}?month=$month&year=$year' +
              Environment.current!.apiKeyUrlQuery,
    );
