import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_question_knowledge_base.dart';
import '../usecase/remote_find_question_knowledge_base.dart';

FindQuestionKnowledgeBase makeRemoteFindQuestionKnowledgeBase(String id) => RemoteFindQuestionKnowledgeBase(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/question/$id')
);