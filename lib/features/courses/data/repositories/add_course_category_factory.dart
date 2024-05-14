import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_insert_course_category.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_category.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

GetCourseCategory makeRemoteInsertCourseCategory() => RemoteInsertCourseCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/courses'),
);
