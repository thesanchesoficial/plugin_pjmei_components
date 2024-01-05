import '../entity/group_entity.dart';

abstract class UpdateGroup {
  Future<GroupEntity> exec(GroupEntity module, {bool log = false});
}