import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_section_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_section.dart';

class RemoteUpdateCourseSection implements GetCourseSection {
  final HttpClient httpClient;
  final String url;
  RemoteUpdateCourseSection({required this.httpClient, required this.url});

  @override
  Future<CourseSectionEntity> exec({Map<String, dynamic>? body, bool log = false}) async {
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
      return CourseSectionEntity.fromMap(httpResponse["success"]);
    } catch (e) {
      throw e;
    }
  }
}
