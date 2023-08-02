import 'package:plugin_pjmei_components/data/usecases/knowledge_base/remote_list_questions_knowledge_base.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/list_questions_knowledge_base.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListQuestionsKnowledgeBase makeRemoteListQuestionsKnowledgeBase(Map<String, dynamic> params) => RemoteListQuestionsKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/question', params: params)
);