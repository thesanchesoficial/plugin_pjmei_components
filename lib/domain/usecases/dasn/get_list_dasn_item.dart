import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetListDasnItem {
  Future<List<DasnItemEntity>> exec({bool log = false});
}
