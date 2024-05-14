import '../entity/course_attachment_entity.dart';

abstract class ListCourseAttachments {
  Future<List<CourseAttachmentEntity>> exec({bool log = false});
}
