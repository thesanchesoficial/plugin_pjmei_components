import 'package:plugin_pjmei_components/data/usecases/stories/story_item/remote_add_story_item.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_item/add_story_item.dart';

import '../../../factories.dart';

AddStoryItem makeRemoteAddStoryItem() => RemoteAddStoryItem(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/story-item'),
    );
