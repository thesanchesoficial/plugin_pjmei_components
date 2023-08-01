import 'package:plugin_pjmei_components/data/usecases/stories/story_item/remote_update_story_item.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_item/update_story_item.dart';

import '../../../factories.dart';

UpdateStoryItem makeRemoteUpdateStoryItem(String id) => RemoteUpdateStoryItem(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/story-item/$id'),
    );
