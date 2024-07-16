import '../entity/withdrawals_entity.dart';

abstract class ListWithdrawals {
  Future<List<WithdrawalsEntity>> exec({bool log = false});
}
