import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_view/add_story_view.dart';
import '../../usecase/story_view/remote_add_story_view.dart';

AddStoryView makeRemoteAddStoryView() => RemoteAddStoryView(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-view'),
);
