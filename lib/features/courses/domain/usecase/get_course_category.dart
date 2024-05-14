import '../entity/course_category_entity.dart';

abstract class GetCourseCategory {
  Future<CourseCategoryEntity> exec({bool log = false});
}
