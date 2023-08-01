import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_list_das_data.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/list_das_data.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListDasData makeRemoteGetDataDasByYearsDas(String cnpj,
        {Map<String, dynamic>? params}) =>
    RemoteListDasData(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('consult/das/year_data/$cnpj', params: params),
    );
