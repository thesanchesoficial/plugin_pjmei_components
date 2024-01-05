import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_item/delete_story_item.dart';
import '../../usecase/story_item/remote_delete_story_item.dart';

DeleteStoryItem makeRemoteDeleteStoryItem(String id) => RemoteDeleteStoryItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-item/$id'),
);
