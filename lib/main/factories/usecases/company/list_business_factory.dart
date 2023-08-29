import 'package:plugin_pjmei_components/data/usecases/company/remote_list_business.dart';
import 'package:plugin_pjmei_components/domain/usecases/company/list_business.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListBusines makeRemoteListBusiness(Map<String, dynamic> params) => RemoteListBusiness(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company', params: params)
);