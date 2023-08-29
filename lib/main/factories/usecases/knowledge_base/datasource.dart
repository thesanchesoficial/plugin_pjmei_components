part of '../usecases.dart';

class _KnowledgeBaseApi {

  // Future<CompanyEntity> findCategory({required String id}) {
  //   return makeRemoteFindCompany(id).exec();
  // }

  Future<List<HelpCategoriesFaqEntity>> listCategories({required Map<String, dynamic> params}) {
    return makeRemoteListCategoriesKnowledgeBase(params).exec();
  }

  Future<HelpCategoriesFaqEntity> insertCategory({required HelpCategoriesFaqEntity data}) {
    return makeRemoteAddCategoryKnowledgeBase().exec(data);
  }

  Future<HelpCategoriesFaqEntity> updateCategory({required String id, required HelpCategoriesFaqEntity data}) {
    return makeRemoteUpdateCategoryKnowledgeBase(id).exec(data);
  }

  Future<bool> deleteCategory({required String id}) {
    return makeRemoteDeleteCategoryKnowledgeBase(id).exec();
  }

  // Future<CompanyEntity> findQuestion({required String id}) {
  //   return makeRemoteFindCompany(id).exec();
  // }

  Future<List<HelpQuestionFaqEntity>> listQuestions({required Map<String, dynamic> params}) {
    return makeRemoteListQuestionsKnowledgeBase(params).exec();
  }

  Future<List<HelpQuestionFaqEntity>> listQuestionsBySearch({required Map<String, dynamic> params}) {
    return makeRemoteGetListQuestionsBySearchFaq(params: params).exec();
  }

  Future<HelpQuestionFaqEntity> insertQuestion({required HelpQuestionFaqEntity data}) {
    return makeRemoteAddQuestionKnowledgeBase().exec(data);
  }

  Future<HelpQuestionFaqEntity> updateQuestion({required String id, required HelpQuestionFaqEntity data}) {
    return makeRemoteUpdateQuestionKnowledgeBase(id).exec(data);
  }

  Future<bool> deleteQuestion({required String id}) {
    return makeRemoteDeleteQuestionKnowledgeBase(id).exec();
  }
}