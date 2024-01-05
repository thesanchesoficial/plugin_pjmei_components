import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_transactions_by_date.dart';
import '../usecase/list_transactions_by_date.dart';

ListTransactionsFinaceOpenedEntity makeRemoteTransactionsByDatePaymentAssistant(String id) => RemoteListTransactionsFinaceOpenedEntity(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$id/user/filter'),
);
