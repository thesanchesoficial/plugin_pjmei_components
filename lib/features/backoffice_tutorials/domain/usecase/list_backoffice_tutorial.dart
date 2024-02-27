import '../entity/backoffice_tutorial_entity.dart';

abstract class ListBackofficeTutorial {
  Future<List<BackofficeTutorialEntity>> exec({Map<String, dynamic> params, bool log = false});
}