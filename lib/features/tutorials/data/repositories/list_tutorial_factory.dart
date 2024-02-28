import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_tutorial.dart';
import '../usecase/remote_list_tutorial.dart';

ListTutorial makeRemoteListTutorial() => RemoteListTutorial(
  httpClient: makeHttpAdapter(),
  url: 'https://pjmei.app/_functions/tutorial',
);
