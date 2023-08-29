import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListTransactionsFinaceOpenedEntity makeRemoteTransactionsByDatePaymentAssistant(String id) => RemoteListTransactionsFinaceOpenedEntity(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/transaction/$id/user/filter'),
);
