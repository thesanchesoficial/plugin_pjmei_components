import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_section_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_section.dart';

class RemoteInsertCourseSection implements GetCourseSection {
  RemoteInsertCourseSection({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CourseSectionEntity> exec({Map<String, dynamic>? body, bool log = false}) async {
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
      if(httpResponse['success']['section'] != null) {
        return CourseSectionEntity.fromMap(httpResponse['success']['section']);
      } else {
        return CourseSectionEntity.fromMap(httpResponse['success']);
      }
    } catch (e) {
      throw e;
    }
  }
}
