import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListTransactionsFinaceOpenedEntity makeRemoteTransactionsByDatePaymentAssistant(
        Map<String, dynamic>? params) =>
    RemoteListTransactionsFinaceOpenedEntity(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('finance/transaction/${userSM.user?.id}/user/filter'),
    );
