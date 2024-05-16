import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_content_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_content.dart';

class RemoteInsertCourseContent implements GetCourseContent {
  RemoteInsertCourseContent({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CourseContentEntity> exec({Map<String, dynamic>? body, bool log = false}) async {
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
      if(httpResponse['success']['content'] != null) {
        return CourseContentEntity.fromMap(httpResponse['success']['content']);
      } else {
        return CourseContentEntity.fromMap(httpResponse['success']);
      }
    } catch (e) {
      throw e;
    }
  }
}
