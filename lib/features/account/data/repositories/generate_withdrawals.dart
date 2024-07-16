import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_generate_withdrawals.dart';
import '../usecase/remote_generate_withdrawals.dart';

GetGenerateWithdrawals generateWithdrawalsAmount(String id) => RemoteGenerateWithdrawals(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/companies/$id/recipients/withdrawals'),
);