import '../../../entity/finance_card_flag_entity.dart';

abstract class UpdateFinanceCardFlags {
  Future<FinanceCardFlagEntity> exec({bool log = false});
}
