import 'package:plugin_pjmei_components/data/usecases/knowledge_base/remote_add_category_knowledge_base.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/add_category_knowledge_base.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddCategoryKnowledgeBase makeRemoteAddCategoryKnowledgeBase() => RemoteAddCategoryKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/category')
);