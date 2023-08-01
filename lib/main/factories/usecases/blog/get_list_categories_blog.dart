import 'package:plugin_pjmei_components/data/usecases/blog/remote_get_list_categories_blog.dart';
import 'package:plugin_pjmei_components/domain/usecases/blog/get_list_categories_blog.dart';

import '../../factories.dart';

GetListCategoriesBlog makeRemoteGetListCategoriesBlog(
        {Map<String, dynamic>? params}) =>
    RemoteGetListCategoriesBlog(
      httpClient: makeHttpAdapter(),
      url: 'https://www.pjmei.app/_functions/blog/categorias',
    );
