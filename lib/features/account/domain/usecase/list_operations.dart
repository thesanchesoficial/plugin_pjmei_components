import '../entity/operation_entity.dart';

abstract class ListOperations {
  Future<List<OperationEntity>> exec({bool log = false});
}
