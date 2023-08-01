import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceTransactionsSearch {
  Future<List<FinanceTransactionEntity>> exec();
}
