import '../entity/category_entity.dart';

abstract class UpdateCategoryFinancialEducation {
  Future<CategoryFinancialEducationEntity> exec(CategoryFinancialEducationEntity category, {bool log = false});
}