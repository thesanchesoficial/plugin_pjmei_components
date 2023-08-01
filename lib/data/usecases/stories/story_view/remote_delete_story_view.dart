import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_view/delete_story_view.dart';

class RemoteDeleteStoryView implements DeleteStoryView {
  RemoteDeleteStoryView({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
        newReturnErrorMsg: true,
      );
      return httpResponse == null;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
