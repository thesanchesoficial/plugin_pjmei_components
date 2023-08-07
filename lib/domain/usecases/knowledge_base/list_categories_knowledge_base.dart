import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListCategoriesKnowledgeBase {
  Future<List<HelpCategoriesFaqEntity>> exec({bool log = false});
}