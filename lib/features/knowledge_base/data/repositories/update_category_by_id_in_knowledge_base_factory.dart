import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_category_knowledge_base.dart';
import '../usecase/remote_update_category_knowledge_base.dart';

UpdateCategoryKnowledgeBase makeRemoteUpdateCategoryKnowledgeBase(String id) => RemoteUpdateCategoryKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/category/$id')
);