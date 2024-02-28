part of '../../../apis.dart';

class _BackofficeTutorialApi {

  Future<List<TutorialEntity>> list() {
    return makeRemoteListTutorial().exec();
  }

}

