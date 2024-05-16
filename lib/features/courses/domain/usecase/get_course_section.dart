import '../entity/course_section_entity.dart';

abstract class GetCourseSection {
  Future<CourseSectionEntity> exec({Map<String, dynamic>? body, bool log = false});
}
