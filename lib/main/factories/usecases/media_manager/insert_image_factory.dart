import 'package:plugin_pjmei_components/data/usecases/media_manager/remote_insert_image.dart';
import 'package:plugin_pjmei_components/domain/usecases/media_manager/insert_image.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

InsertImage makeRemoteInsertImage() => RemoteInsertImage(
  httpClient: makeHttpAdapter(),
  url: "https://www.pjmei.app/_functions/uploadImageFromBase64"
);