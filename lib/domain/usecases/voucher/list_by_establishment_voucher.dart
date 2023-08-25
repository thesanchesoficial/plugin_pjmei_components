import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListVouchersByEstablishment {
  Future<List<VoucherEntity>> exec({bool log = false});
}
