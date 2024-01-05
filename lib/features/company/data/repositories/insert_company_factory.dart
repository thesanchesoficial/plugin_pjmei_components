import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/insert_company.dart';
import '../usecase/remote_insert_company.dart';

InsertCompany makeRemoteInsertCompany() => RemoteInsertCompany(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company')
);