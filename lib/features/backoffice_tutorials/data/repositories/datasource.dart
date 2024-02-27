part of '../../../../src/apis.dart';

class _BackofficeTutorialApi {

  Future<List<RoadmapEntity>> list() {
    return makeRemoteListRoadmap().exec();
  }

}

