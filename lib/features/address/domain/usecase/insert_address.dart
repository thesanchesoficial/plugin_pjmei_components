import '../entity/address_entity.dart';

abstract class InsertAddress {
  Future<AddressEntity> exec(Map<String, dynamic> params, {bool log = false});
}
