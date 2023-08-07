import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetDas {
  Future<DasEntity> exec({bool log = false});
}
