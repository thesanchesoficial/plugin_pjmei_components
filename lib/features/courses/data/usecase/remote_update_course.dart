import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course.dart';

class RemoteUpdateCourse implements GetCourse {
  final HttpClient httpClient;
  final String url;
  RemoteUpdateCourse({required this.httpClient, required this.url});

  @override
  Future<CourseEntity> exec({Map<String, dynamic>? body, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: body,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return CourseEntity.fromMap(httpResponse["success"]);
    } catch (e) {
      throw e;
    }
  }
}
