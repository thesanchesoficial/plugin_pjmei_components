import '../entity/address_entity.dart';

abstract class FindAddress {
  Future<AddressEntity> exec({bool log = false});
}
