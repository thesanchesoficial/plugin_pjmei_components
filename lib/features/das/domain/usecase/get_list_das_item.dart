import '../entity/das_item_entity.dart';

abstract class GetListDasItem {
  Future<List<DasItemEntity>> exec({bool log = false});
}
