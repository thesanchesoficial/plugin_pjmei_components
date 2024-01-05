import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/entity/story_item_entity.dart';
import '../../../domain/usecase/story_item/update_story_item.dart';

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
