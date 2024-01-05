import '../entity/statistics_most_booked_weekdays_entity.dart';

abstract class GetStatisticsMostBookedWeekdays {
  Future<List<StatisticsMostBookedWeekdaysEntity>> exec({bool log = false});
}
