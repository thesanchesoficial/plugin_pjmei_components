import '../entity/category_blog_entity.dart';

abstract class GetListCategoriesBlog {
  Future<List<CategoryBlogEntity>> exec({bool log = false});
}
