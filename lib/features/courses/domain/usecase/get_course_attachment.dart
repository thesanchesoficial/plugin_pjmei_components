import '../entity/course_attachment_entity.dart';

abstract class GetCourseAttachment {
  Future<CourseAttachmentEntity> exec({bool log = false});
}
