import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetListDasnItem makeGetListDasn({Map<String, dynamic>? params}) => RemoteGetListDasnItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/dasn', params: params)
);