import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListDasData {
  Future<List<DasDataEntity>> exec({bool log = false});
}
