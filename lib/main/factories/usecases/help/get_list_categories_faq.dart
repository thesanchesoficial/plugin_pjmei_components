import 'package:plugin_pjmei_components/data/usecases/help/remote_get_list_categories_faq.dart';
import 'package:plugin_pjmei_components/domain/usecases/help/get_list_categories_faq.dart';

import '../../factories.dart';

GetListCategoriesFaq makeRemoteGetListCategoriesFaq(
        {Map<String, dynamic>? params}) =>
    RemoteGetListCategoriesFaq(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/knowledge/category', params: params),
    );
