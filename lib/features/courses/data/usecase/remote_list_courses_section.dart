import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_section_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_course_sections.dart';

class RemoteListCourseSections implements ListCourseSections {
  RemoteListCourseSections({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<CourseSectionEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['sections'] != null) {
        return ((httpResponse['success']['sections']) as List).map((e) => CourseSectionEntity.fromMap(e)).toList();
      } else {
        return ((httpResponse['success']) as List).map((e) => CourseSectionEntity.fromMap(e)).toList();
      }
    } catch (e) {
      throw e;
    }
  }
}
