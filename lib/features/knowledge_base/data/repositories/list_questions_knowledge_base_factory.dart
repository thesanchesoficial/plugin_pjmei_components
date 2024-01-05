import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_questions_knowledge_base.dart';
import '../usecase/remote_list_questions_knowledge_base.dart';

ListQuestionsKnowledgeBase makeRemoteListQuestionsKnowledgeBase(Map<String, dynamic> params) => RemoteListQuestionsKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/question', params: params)
);