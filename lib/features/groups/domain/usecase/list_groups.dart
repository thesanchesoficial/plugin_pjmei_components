import '../entity/group_entity.dart';

abstract class ListGroups {
  Future<List<GroupEntity>> exec({bool log = false});
}