import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateEcommerce {
  Future<EcommerceEntity> exec(EcommerceEntity data, {bool log = false});
}