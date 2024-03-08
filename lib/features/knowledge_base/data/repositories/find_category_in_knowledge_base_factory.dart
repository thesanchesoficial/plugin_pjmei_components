import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_category_knowledge_base.dart';
import '../usecase/remote_find_category_knowledge_base.dart';

FindCategoryKnowledgeBase makeRemoteFindCategoryKnowledgeBase(String id) => RemoteFindCategoryKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/category/$id')
);