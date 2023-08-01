import 'package:plugin_pjmei_components/data/usecases/payment_assistant/list_transactions_by_date.dart';
import 'package:plugin_pjmei_components/domain/usecases/payment_assistant/list_transactions_by_date.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import '../../factories.dart';

ListTransactionsFinaceOpenedEntity makeRemoteTransactionsByDatePaymentAssistant(
        Map<String, dynamic>? params) =>
    RemoteListTransactionsFinaceOpenedEntity(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('finance/transaction/${userSM.user?.id}/user/filter'),
    );
