import '../entity/course_entity.dart';

abstract class GetCourse {
  Future<CourseEntity> exec({Map<String, dynamic>? body, bool log = false});
}
