import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_update_course_content.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_content.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

GetCourseContent makeRemoteUpdateCourseContent(String id) => RemoteUpdateCourseContent(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact/$id'),
);
