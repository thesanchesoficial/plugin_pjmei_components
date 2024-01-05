import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/delete_company.dart';
import '../usecase/remote_delete_company.dart';

DeleteCompany makeRemoteDeleteCompany(String id) => RemoteDeleteCompany(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id'),
);