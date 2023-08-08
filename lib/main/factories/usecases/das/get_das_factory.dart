import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetListDasItem makeGetListDas(String cnpj, {Map<String, dynamic>? params}) => RemoteGetListDasItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('consult/das/$cnpj', params: params)
);