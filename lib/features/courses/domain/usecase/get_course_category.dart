import '../entity/course_category_entity.dart';

abstract class GetCourseCategory {
  Future<CourseCategoryEntity> exec({Map<String, dynamic>? body, bool log = false});
}
