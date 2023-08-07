import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateCategoryExtrasServices {
  Future<CategoryExtraServiceEntity> exec(CategoryExtraServiceEntity category, {bool log = false});
}