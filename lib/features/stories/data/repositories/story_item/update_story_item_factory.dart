import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_item/update_story_item.dart';
import '../../usecase/story_item/remote_update_story_item.dart';

UpdateStoryItem makeRemoteUpdateStoryItem(String id) => RemoteUpdateStoryItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-item/$id'),
);
