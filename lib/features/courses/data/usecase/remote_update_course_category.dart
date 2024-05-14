import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_category_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/get_course_category.dart';

class RemoteUpdateCourseCategory implements GetCourseCategory {
  final HttpClient httpClient;
  final String url;
  RemoteUpdateCourseCategory({required this.httpClient, required this.url});

  @override
  Future<CourseCategoryEntity> exec({Map<String, dynamic>? body, bool log = false}) async {
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
      return CourseCategoryEntity.fromMap(httpResponse["success"]);
    } catch (e) {
      throw e;
    }
  }
}
