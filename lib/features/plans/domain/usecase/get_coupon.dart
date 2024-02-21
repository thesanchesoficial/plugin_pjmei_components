import '../../../voucher/domain/entity/voucher_entity.dart';

abstract class GetVoucher {
  Future<VoucherEntity> exec({bool log = false});
}
