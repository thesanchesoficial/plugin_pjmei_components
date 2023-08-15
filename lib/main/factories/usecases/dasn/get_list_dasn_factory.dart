import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetListDasnItem makeGetListDasn(String cnpj, {Map<String, dynamic>? params}) => RemoteGetListDasnItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('consult/dasn/$cnpj', params: params)
);