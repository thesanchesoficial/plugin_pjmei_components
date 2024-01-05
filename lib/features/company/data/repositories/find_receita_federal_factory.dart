import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_company.dart';
import '../usecase/remote_find_company.dart';

FindCompany makeRemoteFindCompanyReceitaFederal() => RemoteFindCompany(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/mei'),
  method: 'post',
);