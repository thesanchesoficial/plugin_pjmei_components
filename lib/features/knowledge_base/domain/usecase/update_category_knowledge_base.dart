import '../entity/help_categorie_faq_entity.dart';

abstract class UpdateCategoryKnowledgeBase {
  Future<HelpCategoriesFaqEntity> exec(HelpCategoriesFaqEntity category, {bool log = false});
}