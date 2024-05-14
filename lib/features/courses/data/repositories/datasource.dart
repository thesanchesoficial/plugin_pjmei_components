part of '../../../apis.dart';

class _CourseApi {

  Future<CourseEntity> findCourse({required String id}) {
    return makeRemoteFindCourse().exec();
  }

  Future<CourseCategoryEntity> findCourseCategory({required String id}) {
    return makeRemoteFindCourseCategory().exec();
  }

  Future<CourseContentEntity> findCourseContent({required String id}) {
    return makeRemoteFindCourseContent().exec();
  }

  Future<CourseInstructorEntity> findCourseInstructor({required String id}) {
    return makeRemoteFindCourseInstructor().exec();
  }

  Future<CourseSectionEntity> findCourseSection({required String id}) {
    return makeRemoteFindCourseSection().exec();
  }
  
  Future<CourseEntity> insertCourse({required String id}) {
    return makeRemoteInsertCourse().exec();
  }

  Future<CourseCategoryEntity> insertCourseCategory({required String id}) {
    return makeRemoteInsertCourseCategory().exec();
  }

  Future<CourseContentEntity> insertCourseContent({required String id}) {
    return makeRemoteInsertCourseContent().exec();
  }

  Future<CourseInstructorEntity> insertCourseInstructor({required String id}) {
    return makeRemoteInsertCourseInstructor().exec();
  }

  Future<CourseSectionEntity> insertCourseSection({required String id}) {
    return makeRemoteInsertCourseSection().exec();
  }
  
  Future<CourseEntity> updateCourse({required String id}) {
    return makeRemoteUpdateCourse(id).exec();
  }

  Future<CourseCategoryEntity> updateCourseCategory({required String id}) {
    return makeRemoteUpdateCourseCategory(id).exec();
  }

  Future<CourseContentEntity> updateCourseContent({required String id}) {
    return makeRemoteUpdateCourseContent(id).exec();
  }

  Future<CourseInstructorEntity> updateCourseInstructor({required String id}) {
    return makeRemoteUpdateCourseInstructor(id).exec();
  }

  Future<CourseSectionEntity> updateCourseSection({required String id}) {
    return makeRemoteUpdateCourseSection(id).exec();
  }
  
  Future<bool> deleteCourse({required String id}) {
    return makeRemoteDeleteCourse(id).exec();
  }

  Future<bool> deleteCourseCategory({required String id}) {
    return makeRemoteDeleteCourseCategory(id).exec();
  }

  Future<bool> deleteCourseContent({required String id}) {
    return makeRemoteDeleteCourseContent(id).exec();
  }

  Future<bool> deleteCourseInstructor({required String id}) {
    return makeRemoteDeleteCourseInstructor(id).exec();
  }

  Future<bool> deleteCourseSection({required String id}) {
    return makeRemoteDeleteCourseSection(id).exec();
  }
  
  Future<List<CourseEntity>> listCourses({required String id}) {
    return makeRemoteListCourses().exec();
  }

  Future<List<CourseCategoryEntity>> listCourseCategory({required String id}) {
    return makeRemoteListCourseCategories().exec();
  }

  Future<List<CourseContentEntity>> listCourseContent({required String id}) {
    return makeRemoteListCourseContent().exec();
  }

  Future<List<CourseInstructorEntity>> listCourseInstructor({required String id}) {
    return makeRemoteListCourseInstructor().exec();
  }

  Future<List<CourseSectionEntity>> listCourseSection({required String id}) {
    return makeRemoteListCourseSections().exec();
  }

}