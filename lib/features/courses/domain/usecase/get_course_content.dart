import '../entity/course_content_entity.dart';

abstract class GetCourseContent {
  Future<CourseContentEntity> exec({Map<String, dynamic>? body, bool log = false});
}
