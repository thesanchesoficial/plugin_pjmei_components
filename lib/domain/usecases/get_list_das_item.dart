import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetListDasItem {
  Future<List<DasItemEntity>> exec({bool log = false});
}
