import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddEcommerce {
  Future<EcommerceEntity> exec(Map<String, dynamic> params, {bool log = false});
}
