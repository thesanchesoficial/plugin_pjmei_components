import '../entity/category_entity.dart';

abstract class AddCategoryFinancialEducation {
  Future<CategoryFinancialEducationEntity> exec(CategoryFinancialEducationEntity params, {bool log = false});
}