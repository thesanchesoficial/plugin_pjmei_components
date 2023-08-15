import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

PostDasnItem makePostDasn(String cnpj, {Map<String, dynamic>? params}) => RemotePostDasnItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('consult/dasn', params: params),
);