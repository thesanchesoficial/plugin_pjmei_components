import '../entity/help_question_faq_entity.dart';

abstract class AddQuestionKnowledgeBase {
  Future<HelpQuestionFaqEntity> exec(HelpQuestionFaqEntity params, {bool log = false});
}