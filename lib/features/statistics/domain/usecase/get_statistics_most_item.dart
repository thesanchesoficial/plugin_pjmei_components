import '../entity/statistics_most_item_entity.dart';

abstract class GetStatisticsMostItem {
  Future<List<StatisticsMostItemEntity>> exec({bool log = false});
}
