import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_list_das_receita_federal.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/list_das_receita_federal.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListDasReceitaFederal makeRemoteGetYearsDasInReceitaFederal(String cnpj,
        {Map<String, dynamic>? params}) =>
    RemoteListDasReceitaFederal(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('consult/das/year_data/$cnpj', params: params),
    );
