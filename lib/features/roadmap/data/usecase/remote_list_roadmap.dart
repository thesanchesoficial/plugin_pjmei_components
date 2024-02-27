import 'package:plugin_pjmei_components/features/roadmap/domain/entity/roadmap_item.dart';
import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/usecase/list_roadmap.dart';

class RemoteListRoadmap implements ListRoadmap {
  RemoteListRoadmap({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<RoadmapEntity>> exec({Map<String, dynamic>? params, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      return (httpResponse["success"] as List).map((e) => RoadmapEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
