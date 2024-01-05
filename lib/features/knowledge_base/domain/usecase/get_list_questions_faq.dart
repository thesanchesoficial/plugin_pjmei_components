import '../entity/help_question_faq_entity.dart';

abstract class GetListQuestionsFaq {
  Future<List<HelpQuestionFaqEntity>> exec({bool log = false});
}
