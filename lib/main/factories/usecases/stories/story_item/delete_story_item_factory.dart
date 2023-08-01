import 'package:plugin_pjmei_components/data/usecases/stories/story_item/remote_delete_story_item.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_item/delete_story_item.dart';

import '../../../factories.dart';

DeleteStoryItem makeRemoteDeleteStoryItem(String id) => RemoteDeleteStoryItem(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/story-item/$id'),
    );
