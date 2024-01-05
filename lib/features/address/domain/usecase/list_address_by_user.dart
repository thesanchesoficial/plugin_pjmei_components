import '../entity/address_entity.dart';

abstract class GetListAddress {
  Future<List<AddressEntity>> exec({bool log = false});
}
