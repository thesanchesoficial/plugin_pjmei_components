import 'package:plugin_pjmei_components/data/usecases/stories/story_view/remote_update_story_view.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_view/update_story_view.dart';

import '../../../factories.dart';

UpdateStoryView makeRemoteUpdateStoryView(String id) => RemoteUpdateStoryView(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-view/$id'),
);
