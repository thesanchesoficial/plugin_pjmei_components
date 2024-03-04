import '../entity/das_item_entity.dart';

abstract class GetDasItem {
  Future<DasItemEntity> exec({required String year, required String month, bool log = false});
}
