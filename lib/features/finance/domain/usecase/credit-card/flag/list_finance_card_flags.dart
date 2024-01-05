import '../../../entity/finance_card_flag_entity.dart';

abstract class ListFinanceCardFlags {
  Future<List<FinanceCardFlagEntity>> exec({bool log = false});
}
