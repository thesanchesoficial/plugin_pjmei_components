import '../entity/voucher_entity.dart';

abstract class ListVouchersByEstablishment {
  Future<List<VoucherEntity>> exec({bool log = false});
}
