import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_backoffice_tutorial.dart';
import '../usecase/remote_list_backoffice_tutorial.dart';

ListBackofficeTutorial makeRemoteListRoadmap() => RemoteListBackofficeTutorial(
  httpClient: makeHttpAdapter(),
  url: 'https://pjmei.app/_functions/tutorial',
);
