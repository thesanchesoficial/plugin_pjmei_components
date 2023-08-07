import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListUsers {
  Future<List<UserEntity>> exec({bool log = false});
}