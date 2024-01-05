import '../entity/finance_credit_card_category_entity.dart';

abstract class ListFinanceCreditCardCategory {
  Future<List<FinanceCreditCardCategoryEntity>> exec({bool log = false});
}
