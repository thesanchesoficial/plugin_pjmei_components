import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_update_course.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

GetCourse makeRemoteUpdateCourse(String id) => RemoteUpdateCourse(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/courses/$id'),
);
