import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateStoryItem implements UpdateStoryItem {
  RemoteUpdateStoryItem({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<StoryItemEntity> exec(StoryItemEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );
      return StoryItemEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
