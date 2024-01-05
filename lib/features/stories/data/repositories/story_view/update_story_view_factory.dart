import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_view/update_story_view.dart';
import '../../usecase/story_view/remote_update_story_view.dart';

UpdateStoryView makeRemoteUpdateStoryView(String id) => RemoteUpdateStoryView(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-view/$id'),
);
