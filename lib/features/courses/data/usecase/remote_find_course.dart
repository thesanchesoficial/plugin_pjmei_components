import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course.dart';

class RemoteFindCourse implements GetCourse {
  final HttpClient httpClient;
  final String url;
  RemoteFindCourse({required this.httpClient, required this.url});

  @override
  Future<CourseEntity> exec({Map<String, dynamic>? body, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['course'] != null) {
        return CourseEntity.fromMap(httpResponse['success']['course']);
      } else {
        return CourseEntity.fromMap(httpResponse['success']);
      }
    } catch (e) {
      throw e;
    }
  }
}
