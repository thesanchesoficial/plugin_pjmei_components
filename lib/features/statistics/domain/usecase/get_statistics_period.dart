import '../entity/statistics_period_entity.dart';

abstract class GetStatisticsPeriod {
  Future<StatisticsPeriodEntity> exec({bool log = false});
}
