import 'package:plugin_pjmei_components/features/tutorials/domain/entity/tutorial_entity.dart';
import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/usecase/list_tutorial.dart';

class RemoteListTutorial implements ListTutorial {
  RemoteListTutorial({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<TutorialEntity>> exec({Map<String, dynamic>? params, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      return (httpResponse["success"] as List).map((e) => TutorialEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
