import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_instructor_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_course_instructor.dart';

class RemoteListCourseInstructor implements ListCourseInstructor {
  RemoteListCourseInstructor({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<CourseInstructorEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']) as List).map((e) => CourseInstructorEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
