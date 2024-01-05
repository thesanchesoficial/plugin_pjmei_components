import '../entity/help_categorie_faq_entity.dart';

abstract class AddCategoryKnowledgeBase {
  Future<HelpCategoriesFaqEntity> exec(HelpCategoriesFaqEntity params, {bool log = false});
}