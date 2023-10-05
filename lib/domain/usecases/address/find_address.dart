import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class FindAddress {
  Future<AddressEntity> exec({bool log = false});
}
