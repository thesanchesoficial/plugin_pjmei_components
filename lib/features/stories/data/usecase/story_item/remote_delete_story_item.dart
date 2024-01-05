import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/usecase/story_item/delete_story_item.dart';

class RemoteDeleteStoryItem implements DeleteStoryItem {
  RemoteDeleteStoryItem({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'delete',
        newReturnErrorMsg: true,
      );
      return httpResponse == null;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
