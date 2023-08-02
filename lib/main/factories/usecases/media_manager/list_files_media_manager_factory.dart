import 'package:plugin_pjmei_components/data/usecases/media_manager/remote_list_files_media_manager.dart';
import 'package:plugin_pjmei_components/domain/usecases/media_manager/list_files_media_manager.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFilesMediaManager makeRemoteListFilesMediaManager(int index) => RemoteListFilesMediaManager(
  httpClient: makeHttpAdapter(),
  url: "https://www.pjmei.app/_functions/listFiles?skip=$index"
);