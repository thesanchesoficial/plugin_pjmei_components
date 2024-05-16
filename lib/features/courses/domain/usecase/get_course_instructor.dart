import '../entity/course_instructor_entity.dart';

abstract class GetCourseInstructor {
  Future<CourseInstructorEntity> exec({Map<String, dynamic>? body, bool log = false});
}
