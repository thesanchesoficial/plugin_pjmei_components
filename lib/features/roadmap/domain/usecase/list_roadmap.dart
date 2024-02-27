import '../entity/roadmap_item.dart';

abstract class ListRoadmap {
  Future<List<RoadmapEntity>> exec({Map<String, dynamic> params, bool log = false});
}