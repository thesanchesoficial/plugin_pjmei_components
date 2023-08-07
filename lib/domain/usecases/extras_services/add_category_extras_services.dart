import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddCategoryExtrasServices {
  Future<CategoryExtraServiceEntity> exec(CategoryExtraServiceEntity params, {bool log = false});
}