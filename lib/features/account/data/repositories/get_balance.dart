import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_balance.dart';
import '../usecase/remote_get_balance.dart';

GetBalance getBalanceApi(String id) => RemoteGetBalance(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/companies/$id/recipients/balance'),
);