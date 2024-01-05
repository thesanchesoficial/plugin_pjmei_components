import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_files_media_manager.dart';
import '../usecase/remote_list_files_media_manager.dart';

ListFilesMediaManager makeRemoteListFilesMediaManager(int index) => RemoteListFilesMediaManager(
  httpClient: makeHttpAdapter(),
  url: "https://www.pjmei.app/_functions/listFiles?skip=$index"
);