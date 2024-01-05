import '../entity/basic_dashboard_entity.dart';

abstract class GetBasicData {
  Future<BasicDashboardEntity> exec({bool log = false});
}
