import '../entity/help_categorie_faq_entity.dart';

abstract class FindCategoryKnowledgeBase {
  Future<HelpCategoriesFaqEntity> exec({bool log = false});
}