import 'package:plugin_pjmei_components/features/courses/data/usecase/remote_list_course_instructor.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_course_instructor.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../../../utils/variable.dart';

ListCourseInstructor makeRemoteListCourseInstructor() => RemoteListCourseInstructor(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/contact/company/${companySM.company?.id}'),
);
