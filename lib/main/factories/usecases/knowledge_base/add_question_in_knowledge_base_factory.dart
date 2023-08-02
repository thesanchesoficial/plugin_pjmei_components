import 'package:plugin_pjmei_components/data/usecases/knowledge_base/remote_add_question_knowledge_base.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/add_question_knowledge_base.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddQuestionKnowledgeBase makeRemoteAddQuestionKnowledgeBase() => RemoteAddQuestionKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/question')
);