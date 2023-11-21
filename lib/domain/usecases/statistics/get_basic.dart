import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetBasicStatistics {
  Future<BasicStatisticsEntity> exec({bool log = false});
}
