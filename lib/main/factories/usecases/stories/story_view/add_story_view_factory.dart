import 'package:plugin_pjmei_components/data/usecases/stories/story_view/remote_add_story_view.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_view/add_story_view.dart';

import '../../../factories.dart';

AddStoryView makeRemoteAddStoryView() => RemoteAddStoryView(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-view'),
);
