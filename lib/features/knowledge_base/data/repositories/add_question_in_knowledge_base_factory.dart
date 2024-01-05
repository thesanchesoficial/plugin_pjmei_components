import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_question_knowledge_base.dart';
import '../usecase/remote_add_question_knowledge_base.dart';

AddQuestionKnowledgeBase makeRemoteAddQuestionKnowledgeBase() => RemoteAddQuestionKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/question')
);