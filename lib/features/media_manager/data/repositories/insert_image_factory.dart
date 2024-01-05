import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/insert_image.dart';
import '../usecase/remote_insert_image.dart';

InsertImage makeRemoteInsertImage() => RemoteInsertImage(
  httpClient: makeHttpAdapter(),
  url: "https://www.pjmei.app/_functions/uploadImageFromBase64"
);