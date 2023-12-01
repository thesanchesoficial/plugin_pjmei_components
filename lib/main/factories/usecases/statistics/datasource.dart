part of '../usecases.dart';

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
}