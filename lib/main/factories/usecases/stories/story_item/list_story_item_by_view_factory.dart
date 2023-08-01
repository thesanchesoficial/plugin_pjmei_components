import '../../../factories.dart';
import 'package:plugin_pjmei_components/data/usecases/stories/story_item/remote_list_story_item_by_view.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_item/list_story_item_by_view.dart';

ListStoryItemByView makeRemoteListStoryItemByStoryView(String id) =>
    RemoteListStoryItemByView(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/story-item/$id/story-view'),
    );
