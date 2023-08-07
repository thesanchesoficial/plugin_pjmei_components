import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddQuestionKnowledgeBase {
  Future<HelpQuestionFaqEntity> exec(HelpQuestionFaqEntity params, {bool log = false});
}