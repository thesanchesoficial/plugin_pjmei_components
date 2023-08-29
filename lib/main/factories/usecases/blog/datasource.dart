part of '../usecases.dart';

class _BlogApi {

  Future<List<CategoryBlogEntity>> listCategories({Map<String, dynamic>? params}) {
    return makeRemoteGetListCategoriesBlog(params: params).exec();
  }

  Future<List<PostBlogEntity>> listPosts({Map<String, dynamic>? params}) {
    return makeRemoteGetListPostsBlog(params: params).exec();
  }

}