import 'package:plugin_pjmei_components/data/usecases/knowledge_base/remote_update_category_knowledge_base.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/update_category_knowledge_base.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateCategoryKnowledgeBase makeRemoteUpdateCategoryKnowledgeBase(String id) => RemoteUpdateCategoryKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/category/$id')
);