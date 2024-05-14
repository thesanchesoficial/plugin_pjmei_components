import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_category_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/usecase/list_course_categories.dart';

class RemoteListCourseCategories implements ListCourseCategories {
  RemoteListCourseCategories({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<CourseCategoryEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']) as List).map((e) => CourseCategoryEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
