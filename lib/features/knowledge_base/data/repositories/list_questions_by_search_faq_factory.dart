import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_list_questions_faq.dart';
import '../usecase/remote_get_list_questions_faq.dart';

GetListQuestionsFaq makeRemoteGetListQuestionsBySearchFaq({Map<String, dynamic>? params}) => RemoteGetListQuestionsFaq(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/search', params: params),
);
