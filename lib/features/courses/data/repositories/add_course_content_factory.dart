import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_insert_course_content.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_content.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

GetCourseContent makeRemoteInsertCourseContent() => RemoteInsertCourseContent(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact'),
);
