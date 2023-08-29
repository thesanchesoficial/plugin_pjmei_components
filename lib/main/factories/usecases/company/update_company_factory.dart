import 'package:plugin_pjmei_components/data/usecases/company/remote_update_company.dart';
import 'package:plugin_pjmei_components/domain/usecases/company/update_company.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateCompany makeRemoteUpdateCompany(String id) => RemoteUpdateCompany(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id')
);