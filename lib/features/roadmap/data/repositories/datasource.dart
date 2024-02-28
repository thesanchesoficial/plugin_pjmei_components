part of '../../../apis.dart';

class _RoadmapApi {

  Future<List<RoadmapEntity>> list() {
    return makeRemoteListRoadmap().exec();
  }

}

