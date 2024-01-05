import '../entity/ecommerce_entity.dart';

abstract class AddEcommerce {
  Future<EcommerceEntity> exec(Map<String, dynamic> params, {bool log = false});
}
