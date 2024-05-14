import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_instructor_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_instructor.dart';

class RemoteInsertCourseInstructor implements GetCourseInstructor {
  RemoteInsertCourseInstructor({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CourseInstructorEntity> exec({Map<String, dynamic>? body, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: body,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['course'] != null) {
        return CourseInstructorEntity.fromMap(httpResponse['success']['course']);
      } else {
        return CourseInstructorEntity.fromMap(httpResponse['success']);
      }
    } catch (e) {
      throw e;
    }
  }
}
