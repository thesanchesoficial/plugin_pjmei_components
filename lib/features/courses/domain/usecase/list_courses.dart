import '../entity/course_entity.dart';

abstract class ListCourses {
  Future<List<CourseEntity>> exec({bool log = false});
}
