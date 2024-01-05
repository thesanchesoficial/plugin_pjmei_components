import '../../../entity/finance_card_flag_entity.dart';

abstract class CreateFinanceCardFlags {
  Future<FinanceCardFlagEntity> exec({bool log = false});
}
