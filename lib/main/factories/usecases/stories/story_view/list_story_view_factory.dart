import 'package:plugin_pjmei_components/data/usecases/stories/story_view/remote_list_story_view.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_view/list_story_view.dart';

import '../../../factories.dart';

ListStoryView makeRemoteListStoryView() => RemoteListStoryView(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/story-view'),
    );
