import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_list_courses_content.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_course_contenties.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

ListCourseContenties makeRemoteUsersCourseListContent({required String id, Map<String, dynamic>? query}) => RemoteListCourseContent(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/users/courses/sections/$id/contents', params: query),
);
