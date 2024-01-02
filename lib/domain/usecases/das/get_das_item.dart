import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetDasItem {
  Future<DasItemEntity> exec({required String id, bool log = false});
}
