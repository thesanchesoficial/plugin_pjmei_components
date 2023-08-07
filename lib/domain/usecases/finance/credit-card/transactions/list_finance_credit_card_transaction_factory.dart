import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceCreditCardTransactionFactory {
  Future<FinanceTransactionDataEntity> exec({bool log = false});
}
