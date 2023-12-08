import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetStatisticsMostBookedWeekdays {
  Future<List<StatisticsMostBookedWeekdaysEntity>> exec({bool log = false});
}
