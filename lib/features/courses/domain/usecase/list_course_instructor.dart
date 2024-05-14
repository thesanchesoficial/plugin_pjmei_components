import '../entity/course_instructor_entity.dart';

abstract class ListCourseInstructor {
  Future<List<CourseInstructorEntity>> exec({bool log = false});
}
