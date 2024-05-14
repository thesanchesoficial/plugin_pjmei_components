import '../entity/course_content_entity.dart';

abstract class GetCourseContent {
  Future<CourseContentEntity> exec({bool log = false});
}
