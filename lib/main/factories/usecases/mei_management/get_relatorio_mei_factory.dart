import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetRelatorioMeiEntity makeRemoteGetRelatorioMei(num month, num year) =>
    RemoteGetRelatorio(
      httpClient: makeHttpAdapter(),
      url:
          '${Environment.current!.baseUrl}finance/report/month/mei/${companySM.company!.id}?month=$month&year=$year' +
              Environment.current!.apiKeyUrlQuery,
    );
