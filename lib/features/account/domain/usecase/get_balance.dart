import '../entity/balance_entity.dart';

abstract class GetBalance {
  Future<BalanceEntity> exec({bool log = false});
}
