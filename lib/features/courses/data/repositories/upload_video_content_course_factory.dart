import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../../upload/data/usecase/remote_upload_file.dart';
import '../../../upload/domain/usecase/upload_file.dart';

UploadFile makeRemoteUploadVideoContentCourse(String contentId) => RemoteUploadFile(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/courses/sections/contents/$contentId/upload/video'),
);