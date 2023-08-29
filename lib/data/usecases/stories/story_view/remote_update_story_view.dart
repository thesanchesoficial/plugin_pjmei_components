import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateStoryView implements UpdateStoryView {
  RemoteUpdateStoryView({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<StoryViewEntity> exec(StoryViewEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      return StoryViewEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
