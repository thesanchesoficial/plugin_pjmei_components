import 'package:plugin_pjmei_components/data/usecases/stories/story_item/remote_list_story_item.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_item/list_story_item.dart';

import '../../../factories.dart';

ListStoryItem makeRemoteListStoryItem() => RemoteListStoryItem(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/story-item'),
    );
