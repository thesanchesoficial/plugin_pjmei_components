import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_finance_credit_card_category.dart';
import '../usecase/remote_list_finance_credit_card_category.dart';

ListFinanceCreditCardCategory makeRemoteListFinanceCreditCardCategory() => RemoteListFinanceCreditCardCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/category-credit-card'),
);