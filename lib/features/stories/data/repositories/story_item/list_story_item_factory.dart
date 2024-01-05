import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_item/list_story_item.dart';
import '../../usecase/story_item/remote_list_story_item.dart';

ListStoryItem makeRemoteListStoryItem() => RemoteListStoryItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-item'),
);
