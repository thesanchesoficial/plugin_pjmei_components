import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_item/update_story_item.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateStoryItem implements UpdateStoryItem {
  RemoteUpdateStoryItem({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<StoryItemEntity> exec(Map params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'put',
        body: params,
        newReturnErrorMsg: true,
      );
      return StoryItemEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
