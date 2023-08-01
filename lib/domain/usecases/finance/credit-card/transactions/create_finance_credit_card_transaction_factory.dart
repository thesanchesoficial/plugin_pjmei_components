import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class CreateFinanceCreditCardTransactionFactory {
  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity body);
}
