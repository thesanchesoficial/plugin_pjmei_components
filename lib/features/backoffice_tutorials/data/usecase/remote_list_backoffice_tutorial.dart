import 'package:plugin_pjmei_components/features/backoffice_tutorials/domain/entity/backoffice_tutorial_entity.dart';
import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/usecase/list_backoffice_tutorial.dart';

class RemoteListBackofficeTutorial implements ListBackofficeTutorial {
  RemoteListBackofficeTutorial({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<BackofficeTutorialEntity>> exec({Map<String, dynamic>? params, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      return (httpResponse["success"] as List).map((e) => BackofficeTutorialEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
