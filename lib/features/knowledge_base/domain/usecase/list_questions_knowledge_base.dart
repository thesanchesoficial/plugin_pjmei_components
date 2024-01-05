import '../entity/help_question_faq_entity.dart';

abstract class ListQuestionsKnowledgeBase {
  Future<List<HelpQuestionFaqEntity>> exec({bool log = false});
}