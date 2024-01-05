import '../entity/help_question_faq_entity.dart';

abstract class UpdateQuestionKnowledgeBase {
  Future<HelpQuestionFaqEntity> exec(HelpQuestionFaqEntity category, {bool log = false});
}