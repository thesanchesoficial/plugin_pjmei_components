import 'package:plugin_pjmei_components/data/usecases/stories/story_view/remote_list_story_view_by_owner.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_view/list_story_view_by_owner.dart';

import '../../../factories.dart';

ListStoryViewByOwner makeRemoteListStoryViewByOwner(String id) => RemoteListStoryViewByOwner(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-view/$id/user-or-company'),
);
