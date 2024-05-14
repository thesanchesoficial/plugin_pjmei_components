import '../entity/course_instructor_entity.dart';

abstract class GetCourseInstructor {
  Future<CourseInstructorEntity> exec({bool log = false});
}
