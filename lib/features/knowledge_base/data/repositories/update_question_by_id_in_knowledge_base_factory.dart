import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_question_knowledge_base.dart';
import '../usecase/remote_update_question_knowledge_base.dart';

UpdateQuestionKnowledgeBase makeRemoteUpdateQuestionKnowledgeBase(String id) => RemoteUpdateQuestionKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/question/$id')
);