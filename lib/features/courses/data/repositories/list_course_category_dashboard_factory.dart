import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_list_course_categories.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_course_categories.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

ListCourseCategories makeRemoteDashboardCourseListCategories({Map<String, dynamic>? query}) => RemoteListCourseCategories(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/courses/categories', params: query),
);
