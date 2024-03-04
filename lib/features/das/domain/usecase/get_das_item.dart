import '../entity/das_item_entity.dart';

abstract class GetDasItem {
  Future<DasItemEntity> exec({required int year, required int month, bool log = false});
}
