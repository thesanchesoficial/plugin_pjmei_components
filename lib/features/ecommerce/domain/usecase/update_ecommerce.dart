import '../entity/ecommerce_entity.dart';

abstract class UpdateEcommerce {
  Future<EcommerceEntity> exec(EcommerceEntity data, {bool log = false});
}