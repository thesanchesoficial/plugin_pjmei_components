import '../entity/address_entity.dart';

abstract class UpdateAddress {
  Future<AddressEntity> exec(AddressEntity item, {bool log = false});
}
