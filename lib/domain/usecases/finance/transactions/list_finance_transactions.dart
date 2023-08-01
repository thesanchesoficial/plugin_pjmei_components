import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceTransactions {
  Future<FinanceTransactionDataEntity> exec();
}
