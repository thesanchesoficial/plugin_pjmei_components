import 'package:plugin_pjmei_components/data/usecases/knowledge_base/remote_update_question_knowledge_base.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/update_question_knowledge_base.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateQuestionKnowledgeBase makeRemoteUpdateQuestionKnowledgeBase(String id) => RemoteUpdateQuestionKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/question/$id')
);