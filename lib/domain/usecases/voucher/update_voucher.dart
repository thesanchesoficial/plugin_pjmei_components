import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateVoucher {
  Future<VoucherEntity> exec(VoucherEntity params, {bool log = false});
}
