import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_find_course_instructor.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_instructor.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

GetCourseInstructor makeRemoteDashboardCourseFindInstructor(String id) => RemoteFindCourseInstructor(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/courses/instructors/$id'),
);
