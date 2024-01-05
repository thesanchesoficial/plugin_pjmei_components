import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_company.dart';
import '../usecase/remote_update_company.dart';

UpdateCompany makeRemoteUpdateCompany(String id) => RemoteUpdateCompany(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id')
);