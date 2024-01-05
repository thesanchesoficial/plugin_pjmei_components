import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_categories_knowledge_base.dart';
import '../usecase/remote_list_categories_knowledge_base.dart';

ListCategoriesKnowledgeBase makeRemoteListCategoriesKnowledgeBase(Map<String, dynamic> params) => RemoteListCategoriesKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/category', params: params)
);