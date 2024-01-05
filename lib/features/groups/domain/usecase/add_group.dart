import '../entity/group_entity.dart';

abstract class AddGroup {
  Future<GroupEntity> exec(GroupEntity params, {bool log = false});
}