import '../entity/ecommerce_entity.dart';

abstract class FindEcommerce {
  Future<EcommerceEntity> exec({bool log = false});
}
