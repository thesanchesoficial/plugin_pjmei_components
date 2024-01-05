import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_item/list_story_item_by_view.dart';
import '../../usecase/story_item/remote_list_story_item_by_view.dart';

ListStoryItemByView makeRemoteListStoryItemByStoryView(String id) => RemoteListStoryItemByView(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-item/$id/story-view'),
);
