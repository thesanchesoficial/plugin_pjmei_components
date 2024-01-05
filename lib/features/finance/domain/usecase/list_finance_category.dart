import '../entity/finance_category_entity.dart';

abstract class ListFinanceCategory {
  Future<List<FinanceCategoryEntity>> exec({bool log = false});
}
