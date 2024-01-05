import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_view/list_story_view_by_owner.dart';
import '../../usecase/story_view/remote_list_story_view_by_owner.dart';

ListStoryViewByOwner makeRemoteListStoryViewByOwner(String id) => RemoteListStoryViewByOwner(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-view/$id/user-or-company'),
);
