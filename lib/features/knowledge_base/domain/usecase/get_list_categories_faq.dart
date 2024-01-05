import '../entity/help_categorie_faq_entity.dart';

abstract class GetListCategoriesFaq {
  Future<List<HelpCategoriesFaqEntity>> exec({bool log = false});
}
