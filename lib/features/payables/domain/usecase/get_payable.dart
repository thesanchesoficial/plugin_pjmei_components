import '../entity/payable_entity.dart';

abstract class GetPayable {
  Future<PayableEntity> exec({bool log = false});
}
