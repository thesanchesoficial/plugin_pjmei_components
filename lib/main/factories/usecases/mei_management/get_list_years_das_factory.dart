import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_list_das_years.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/list_das_years.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListDasYears makeRemoteGetYearsDas(String cnpj,
        {Map<String, dynamic>? params}) =>
    RemoteListDasYears(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('consult/das/years/$cnpj'),
    );
