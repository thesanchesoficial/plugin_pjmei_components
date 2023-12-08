import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetStatisticsMostItem {
  Future<List<StatisticsMostItemEntity>> exec({bool log = false});
}
