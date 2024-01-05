import '../entity/category_entity.dart';

abstract class ListCategoriesFinancialEducation {
  Future<List<CategoryFinancialEducationEntity>> exec({bool log = false});
}
