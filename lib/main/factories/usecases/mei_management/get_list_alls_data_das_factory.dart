import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_list_all_das_years.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/list_all_das_years.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListAllDasYears makeRemoteListAllsDataDas(String cnpj,
        {Map<String, dynamic>? params}) =>
    RemoteListAllDasYears(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('consult/das/time/contribution/$cnpj/cnpj'),
    );
