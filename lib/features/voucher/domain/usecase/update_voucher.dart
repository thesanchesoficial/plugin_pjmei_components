import '../entity/voucher_entity.dart';

abstract class UpdateVoucher {
  Future<VoucherEntity> exec(VoucherEntity params, {bool log = false});
}
