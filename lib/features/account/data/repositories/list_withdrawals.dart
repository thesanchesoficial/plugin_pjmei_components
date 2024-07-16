import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_withdrawals.dart';
import '../usecase/remote_list_withdrawals.dart';

ListWithdrawals makeRemoteListWithdrawals(String id, {required Map<String, dynamic> params}) => RemoteListWithdrawals(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/companies/$id/recipients/withdrawals', params: params),
);
