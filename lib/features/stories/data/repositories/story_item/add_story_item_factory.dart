import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_item/add_story_item.dart';
import '../../usecase/story_item/remote_add_story_item.dart';

AddStoryItem makeRemoteAddStoryItem() => RemoteAddStoryItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-item'),
);
