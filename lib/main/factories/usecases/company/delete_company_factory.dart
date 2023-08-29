import 'package:plugin_pjmei_components/data/usecases/company/remote_delete_company.dart';
import 'package:plugin_pjmei_components/domain/usecases/company/delete_company.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteCompany makeRemoteDeleteCompany(String id) => RemoteDeleteCompany(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id'),
);