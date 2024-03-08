import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class FindQuestionKnowledgeBase {
  Future<HelpQuestionFaqEntity> exec({bool log = false});
}