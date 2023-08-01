import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_item/list_story_item_by_view.dart';

class RemoteListStoryItemByView implements ListStoryItemByView {
  RemoteListStoryItemByView({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<StoryItemEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']) as List)
          .map((e) => StoryItemEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
