import '../entity/basic_entity.dart';

abstract class GetBasicStatistics {
  Future<BasicStatisticsEntity> exec({bool log = false});
}
