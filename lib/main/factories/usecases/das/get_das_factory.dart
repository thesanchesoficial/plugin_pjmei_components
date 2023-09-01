import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetListDasItem makeGetListDas({Map<String, dynamic>? params}) => RemoteGetListDasItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/das', params: params)
);