part of '../../../apis.dart';

class _CourseApi {

  Future<CourseEntity> findCourse({required String id}) {
    return makeRemoteDashboardCourseFind(id).exec();
  }

  Future<CourseCategoryEntity> findCourseCategory({required String id}) {
    return makeRemoteDashboardCourseFindCategory(id).exec();
  }

  Future<CourseContentEntity> findCourseContent({required String id}) {
    return makeRemoteDashboardCourseFindContent(id).exec();
  }

  Future<CourseInstructorEntity> findCourseInstructor({required String id}) {
    return makeRemoteDashboardCourseFindInstructor(id).exec();
  }

  Future<CourseSectionEntity> findCourseSection({required String id}) {
    return makeRemoteDashboardCourseFindSection(id).exec();
  }
  
  Future<CourseEntity> insertCourse({
    required String categoryId,
    required String title,
    required String cover,
    required String description,
    required List<String> instructors,
    required bool isFree,
  }) {
    return makeRemoteDashboardCourseInsert().exec(
      body: {
        'categoryId': categoryId,
        'title': title,
        'cover': cover,
        'description': description,
        'instructors': instructors,
        'isFree': isFree,
      },
    );
  }

  Future<CourseCategoryEntity> insertCourseCategory({
    required String name,
    String? description,
    bool isVisible = false,
  }) {
    return makeRemoteDashboardCourseInsertCategory().exec(
      body: {
        'name': name,
        'description': description,
        'isVisible': isVisible,
      },
    );
  }

  Future<CourseContentEntity> insertCourseContent({
    required String sectionId,
    required String type,
    required String title,
    required String description,
    required int index,
  }) {
    return makeRemoteDashboardCourseInsertContent().exec(
      body: {
        'sectionId': sectionId,
        'type': type,
        'title': title,
        'description': description,
        'index': index,
      },
    );
  }

  Future<CourseInstructorEntity> insertCourseInstructor({
    required String name,
    String? email,
    required String avatar,
    required String biography,
  }) {
    return makeRemoteDashboardCourseInsertInstructor().exec(
      body: {
        'name': name,
        'avatar': avatar,
        'biography': biography,
        'email': email,
      },
    );
  }

  Future<CourseSectionEntity> insertCourseSection({
    required String courseId,
    required String title,
    required int index,
    String? description,
  }) {
    return makeRemoteDashboardCourseInsertSection().exec(
      body: {
        'courseId': courseId,
        'title': title,
        'index': index,
        'description': description,
      },
    );
  }
  
  Future<CourseEntity> updateCourse({required String id, required CourseEntity body}) {
    final Map<String, dynamic> tmp = body.toMap();
    tmp['categoryId'] = '${body.category.id}';
    tmp['instructors'] = '${body.instructors?.map((e) => e.id).toList()}';
    return makeRemoteUpdateCourse(id).exec(body: tmp);
  }

  Future<CourseCategoryEntity> updateCourseCategory({required String id, required CourseCategoryEntity body}) {
    return makeRemoteUpdateCourseCategory(id).exec(body: body.toMap());
  }

  Future<CourseContentEntity> updateCourseContent({required String id, required CourseContentEntity body}) {
    return makeRemoteUpdateCourseContent(id).exec(body: body.toMap());
  }

  Future<CourseInstructorEntity> updateCourseInstructor({required String id, required CourseInstructorEntity body}) {
    return makeRemoteUpdateCourseInstructor(id).exec(body: body.toMap());
  }

  Future<CourseSectionEntity> updateCourseSection({required String id, required CourseSectionEntity body}) {
    return makeRemoteUpdateCourseSection(id).exec(body: body.toMap());
  }
  
  Future<FileEntity> uploadVideoContentCourse({required String id, required List<int>? file, String? filename, MediaType? contentType, bool isPublic = false, bool log = false}) {
    return makeRemoteUploadVideoContentCourse(id).exec(
      file,
      filename: filename,
      contentType: contentType,
      isPublic: isPublic,
      log: log,
    );
  }
  
  Future<bool> deleteCourse({required String id}) {
    return makeRemoteDashboardCourseDelete(id).exec();
  }

  Future<bool> deleteCourseCategory({required String id}) {
    return makeRemoteDashboardCourseDeleteCategory(id).exec();
  }

  Future<bool> deleteCourseContent({required String id}) {
    return makeRemoteDashboardCourseDeleteContent(id).exec();
  }

  Future<bool> deleteCourseInstructor({required String id}) {
    return makeRemoteDashboardCourseDeleteInstructor(id).exec();
  }

  Future<bool> deleteCourseSection({required String id}) {
    return makeRemoteDashboardCourseDeleteSection(id).exec();
  }

  Future<List<CourseEntity>> listCoursesDashboard({Map<String, dynamic>? query}) {
    return makeRemoteDashboardCourseList(query: query).exec();
  }

  Future<List<CourseCategoryEntity>> listCourseCategoryDashboard({Map<String, dynamic>? query}) {
    return makeRemoteDashboardCourseListCategories(query: query).exec();
  }

  Future<List<CourseContentEntity>> listCourseContent({required String id, Map<String, dynamic>? query}) {
    return makeRemoteDashboardCourseListContent(id: id, query: query).exec();
  }

  Future<List<CourseInstructorEntity>> listCourseInstructor({Map<String, dynamic>? query}) {
    return makeRemoteDashboardCourseListInstructor(query: query).exec();
  }

  Future<List<CourseInstructorEntity>> listCourseInstructorDashboard({Map<String, dynamic>? query}) {
    return makeRemoteDashboardCourseListInstructor(query: query).exec();
  }

  Future<List<CourseSectionEntity>> listCourseSection({required String courseId, Map<String, dynamic>? query}) {
    return makeRemoteDashboardCourseListSections(courseId, query: query).exec();
  }


  /////////////////////////////////
  /////////////////////////////////
  /////////////////////////////////
  
  
  Future<List<CourseCategoryEntity>> listCategoryPublic({Map<String, dynamic>? query}) {
    return makeRemoteCourseListCategories(query: query).exec();
  }

  Future<List<CourseEntity>> listCoursesPublic({Map<String, dynamic>? query}) {
    return makeRemoteCourseList(query: query).exec();
  }

  Future<List<CourseEntity>> listCoursesByUser({Map<String, dynamic>? query}) {
    return makeRemoteUsersCourseListMy(query: query).exec();
  }

  Future<CourseEntity> findCoursePublic({required String id}) {
    return makeRemoteCourseFind(id).exec();
  }

  Future<CourseEntity> findCourseByUser({required String id}) {
    return makeRemoteUsersCourseFind(id).exec();
  }

  Future<List<CourseSectionEntity>> listCourseSectionUser({required String courseId, Map<String, dynamic>? query}) {
    return makeRemoteUsersCourseListSections(courseId, query: query).exec();
  }

  Future<CourseSectionEntity> findCourseSectionUser({required String id}) {
    return makeRemoteUsersCourseFindSection(id).exec();
  }

  Future<CourseContentEntity> findCourseContentUser({required String id}) {
    return makeRemoteUsersCourseFindContent(id).exec();
  }

  Future<List<CourseContentEntity>> listCourseContentUser({required String id, Map<String, dynamic>? query}) {
    return makeRemoteUsersCourseListContent(id: id, query: query).exec();
  }

}