import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/story_view_entity.dart';
import '../../../domain/usecase/story_view/list_story_view.dart';

class RemoteListStoryView implements ListStoryView {
  RemoteListStoryView({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<StoryViewEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['storys']) as List)
          .map((e) => StoryViewEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
