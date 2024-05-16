import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_find_course_category.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_category.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

GetCourseCategory makeRemoteFindCourseCategory(String id) => RemoteFindCourseCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/courses/categories/$id'),
);
