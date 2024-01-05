import '../entity/post_blog_entity.dart';

abstract class GetListPostsBlog {
  Future<List<PostBlogEntity>> exec({bool log = false});
}
