import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_list_courses_section.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_course_sections.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

ListCourseSections makeRemoteUsersCourseListSections(String courseId, {Map<String, dynamic>? query}) => RemoteListCourseSections(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/users/courses/$courseId/sections', params: query),
);
