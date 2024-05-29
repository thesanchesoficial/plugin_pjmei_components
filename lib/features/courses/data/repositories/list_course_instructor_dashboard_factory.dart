import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_list_course_instructor.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_course_instructor.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

ListCourseInstructor makeRemoteDashboardCourseListInstructor({Map<String, dynamic>? query}) => RemoteListCourseInstructor(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/courses/instructors', params: query),
);
