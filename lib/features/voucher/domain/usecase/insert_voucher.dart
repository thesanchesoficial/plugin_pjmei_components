import '../entity/voucher_entity.dart';

abstract class AddVoucher {
  Future<VoucherEntity> exec(VoucherEntity params, {bool log = false});
}
