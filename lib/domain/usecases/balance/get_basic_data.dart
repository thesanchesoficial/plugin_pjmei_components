import 'package:plugin_pjmei_components/domain/entities/basic_dashboard_entity.dart';

abstract class GetBasicData {
  Future<BasicDashboardEntity> exec();
}
