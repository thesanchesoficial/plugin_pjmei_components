import '../entity/das_item_entity.dart';

abstract class GetDasItem {
  Future<DasItemEntity> exec({required String id, bool log = false});
}
