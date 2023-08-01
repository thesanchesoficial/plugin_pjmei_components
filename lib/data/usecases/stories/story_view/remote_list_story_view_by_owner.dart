import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_view/list_story_view_by_owner.dart';

class RemoteListStoryViewByOwner implements ListStoryViewByOwner {
  RemoteListStoryViewByOwner({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<StoryViewEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
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
