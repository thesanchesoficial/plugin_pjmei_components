import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_list_categories_blog.dart';
import '../usecase/remote_get_list_categories_blog.dart';

GetListCategoriesBlog makeRemoteGetListCategoriesBlog({Map<String, dynamic>? params}) => RemoteGetListCategoriesBlog(
  httpClient: makeHttpAdapter(),
  url: 'https://www.pjmei.app/_functions/blog/categorias',
);
