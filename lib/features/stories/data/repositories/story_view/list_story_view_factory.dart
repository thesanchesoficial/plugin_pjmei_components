import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/story_view/list_story_view.dart';
import '../../usecase/story_view/remote_list_story_view.dart';

ListStoryView makeRemoteListStoryView() => RemoteListStoryView(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/story-view'),
);
