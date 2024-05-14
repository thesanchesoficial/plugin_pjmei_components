import '../entity/course_section_entity.dart';

abstract class GetCourseSection {
  Future<CourseSectionEntity> exec({bool log = false});
}
