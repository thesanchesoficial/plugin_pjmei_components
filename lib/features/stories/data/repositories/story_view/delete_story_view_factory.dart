import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_view/delete_story_view.dart';
import '../../usecase/story_view/remote_delete_story_view.dart';

DeleteStoryView makeRemoteDeleteStoryView(String id) => RemoteDeleteStoryView(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-view/$id'),
);
