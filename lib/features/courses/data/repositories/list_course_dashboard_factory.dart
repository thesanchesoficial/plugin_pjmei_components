import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_list_courses.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_courses.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

ListCourses makeRemoteDashboardCourseList({Map<String, dynamic>? query}) => RemoteListCourses(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/courses', params: query),
);
