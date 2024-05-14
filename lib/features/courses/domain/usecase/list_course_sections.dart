import '../entity/course_section_entity.dart';

abstract class ListCourseSections {
  Future<List<CourseSectionEntity>> exec({bool log = false});
}