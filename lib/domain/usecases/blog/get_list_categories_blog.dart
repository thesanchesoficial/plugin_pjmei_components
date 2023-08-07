import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetListCategoriesBlog {
  Future<List<CategoryBlogEntity>> exec({bool log = false});
}
