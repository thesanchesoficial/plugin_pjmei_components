part of '../../../../src/apis.dart';

class _RoadmapApi {

  Future<List<RoadmapEntity>> list() {
    return makeRemoteListRoadmap().exec();
  }

}

