import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetStatisticsPeriod {
  Future<StatisticsPeriodEntity> exec({bool log = false});
}
