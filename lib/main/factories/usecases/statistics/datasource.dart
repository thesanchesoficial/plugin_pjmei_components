part of '../usecases.dart';

class _StatisticsApi {

  Future<BasicStatisticsEntity> basic() {
    return makeRemoteGetBasicStatistics().exec();
  }
}