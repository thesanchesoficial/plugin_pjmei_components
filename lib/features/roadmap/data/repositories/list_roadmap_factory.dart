import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_roadmap.dart';
import '../usecase/remote_list_roadmap.dart';

ListRoadmap makeRemoteListRoadmap() => RemoteListRoadmap(
  httpClient: makeHttpAdapter(),
  url: 'https://pjmei.app/_functions/roadmap',
);
