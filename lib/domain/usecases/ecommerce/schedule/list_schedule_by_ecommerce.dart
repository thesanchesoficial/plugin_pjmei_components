import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListScheduleByEcommerce {
  Future<List<ScheduleEntity>> exec({Map<String, dynamic> params, bool log = false});
}
