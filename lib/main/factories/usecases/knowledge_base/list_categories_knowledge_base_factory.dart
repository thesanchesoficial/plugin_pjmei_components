import 'package:plugin_pjmei_components/data/usecases/knowledge_base/remote_list_categories_knowledge_base.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/list_categories_knowledge_base.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListCategoriesKnowledgeBase makeRemoteListCategoriesKnowledgeBase(Map<String, dynamic> params) => RemoteListCategoriesKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/category', params: params)
);