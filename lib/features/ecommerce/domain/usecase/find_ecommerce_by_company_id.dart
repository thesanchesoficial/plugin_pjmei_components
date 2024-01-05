import '../entity/ecommerce_entity.dart';

abstract class FindEcommerceByCompanyId {
  Future<EcommerceEntity> exec({bool log = false});
}
