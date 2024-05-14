import '../entity/course_category_entity.dart';

abstract class ListCourseCategories {
  Future<List<CourseCategoryEntity>> exec({bool log = false});
}
