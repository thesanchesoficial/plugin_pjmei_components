import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetFinanceTransaction {
  Future<FinanceTransactionEntity> exec();
}
