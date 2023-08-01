import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class UpdateFinanceCreditCardTransaction {
  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity body);
}
