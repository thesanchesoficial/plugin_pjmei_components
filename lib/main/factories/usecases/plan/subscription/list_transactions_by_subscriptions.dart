import 'package:plugin_pjmei_components/data/usecases/plan/remote_list_transactions_by_subscription.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/list_transactions_by_subscriptions.dart';

import '../../../factories.dart';

ListTransactionsBySubscriptions makeRemoteListTransactionsBySubscriptions(int id) => RemoteListTransactionsBySubscriptions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/signature/$id/payment/history'),
);
