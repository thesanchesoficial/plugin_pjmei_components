import '../entity/course_content_entity.dart';

abstract class ListCourseContenties {
  Future<List<CourseContentEntity>> exec({bool log = false});
}
