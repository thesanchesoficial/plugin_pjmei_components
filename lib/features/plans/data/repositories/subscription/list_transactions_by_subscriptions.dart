import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/list_transactions_by_subscriptions.dart';
import '../../usecase/remote_list_transactions_by_subscription.dart';

ListTransactionsBySubscriptions makeRemoteListTransactionsBySubscriptions({required String id}) => RemoteListTransactionsBySubscriptions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/subscription/$id/payment/historic'),
);
