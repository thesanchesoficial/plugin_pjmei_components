import '../entity/dasn_item_entity.dart';

abstract class GetListDasnItem {
  Future<List<DasnItemEntity>> exec({bool log = false});
}
