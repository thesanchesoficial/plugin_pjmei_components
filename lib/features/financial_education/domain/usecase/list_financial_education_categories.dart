import '../entity/category_entity.dart';

abstract class GetListCategoriesFinancialEducation {
  Future<List<CategoryFinancialEducationEntity>> exec({bool log = false});
}
