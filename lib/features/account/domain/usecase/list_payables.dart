import '../entity/payable_entity.dart';

abstract class ListPayables {
  Future<List<PayableEntity>> exec({bool log = false});
}
