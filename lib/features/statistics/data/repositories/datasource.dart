part of '../../../../src/apis.dart';

class _StatisticsApi {

  Future<BasicStatisticsEntity> basic() {
    return makeRemoteGetBasicStatistics().exec();
  }

  Future<StatisticsPeriodEntity> companyByPeriod({Map<String, dynamic>? params}) {
    return makeRemoteGetStatisticsPeriodCompany(params: params).exec();
  }

  Future<StatisticsPeriodEntity> userByPeriod({Map<String, dynamic>? params}) {
    return makeRemoteGetStatisticsPeriodUser(params: params).exec();
  }

  Future<StatisticsPeriodEntity> scheduleByPeriod({Map<String, dynamic>? params}) {
    return makeRemoteGetStatisticsPeriodSchedule(params: params).exec();
  }

  Future<List<StatisticsMostBookedWeekdaysEntity>> mostBookedWeekdays({Map<String, dynamic>? params}) {
    return makeRemoteGetStatisticsMostBookedWeekdays(params: params).exec();
  }

  Future<List<StatisticsMostItemEntity>> serviceLocationMostSchedule({Map<String, dynamic>? params}) {
    return makeRemoteGetStatisticsMostServiceLocationMostSchedule(params: params).exec();
  }

  Future<List<StatisticsMostItemEntity>> productsMostSchedule({Map<String, dynamic>? params}) {
    return makeRemoteGetStatisticsMostProductsMostSchedule(params: params).exec();
  }

  Future<List<StatisticsMostItemEntity>> categoryMostSchedule({Map<String, dynamic>? params}) {
    return makeRemoteGetStatisticsMostCategoryMostSchedule(params: params).exec();
  }
}