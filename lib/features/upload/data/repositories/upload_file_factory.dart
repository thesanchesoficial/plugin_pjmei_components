import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/upload_file.dart';
import '../usecase/remote_upload_file.dart';

UploadFile makeRemoteUploadFile() => RemoteUploadFile(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/upload')
);