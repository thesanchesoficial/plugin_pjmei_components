import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateAddress {
  Future<AddressEntity> exec(AddressEntity item, {bool log = false});
}
