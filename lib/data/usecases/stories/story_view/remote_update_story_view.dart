import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_view/update_story_view.dart';

class RemoteUpdateStoryView implements UpdateStoryView {
  RemoteUpdateStoryView({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<StoryViewEntity> exec(Map params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'put',
        body: params,
        newReturnErrorMsg: true,
      );
      return StoryViewEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
