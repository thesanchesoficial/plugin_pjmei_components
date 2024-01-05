import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_category_knowledge_base.dart';
import '../usecase/remote_add_category_knowledge_base.dart';

AddCategoryKnowledgeBase makeRemoteAddCategoryKnowledgeBase() => RemoteAddCategoryKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/category')
);