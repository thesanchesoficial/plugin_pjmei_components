import 'package:plugin_pjmei_components/data/usecases/stories/story_view/remote_delete_story_view.dart';
import 'package:plugin_pjmei_components/domain/usecases/stories/story_view/delete_story_view.dart';

import '../../../factories.dart';

DeleteStoryView makeRemoteDeleteStoryView(String id) => RemoteDeleteStoryView(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/story-view/$id'),
    );
