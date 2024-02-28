import '../entity/tutorial_entity.dart';

abstract class ListTutorial {
  Future<List<TutorialEntity>> exec({Map<String, dynamic> params, bool log = false});
}