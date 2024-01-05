import '../entity/user_entity.dart';

abstract class ListUsers {
  Future<List<UserEntity>> exec({bool log = false});
}