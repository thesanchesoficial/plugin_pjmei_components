import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_insert_course_section.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_section.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

GetCourseSection makeRemoteInsertCourseSection() => RemoteInsertCourseSection(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/courses/sections'),
);
