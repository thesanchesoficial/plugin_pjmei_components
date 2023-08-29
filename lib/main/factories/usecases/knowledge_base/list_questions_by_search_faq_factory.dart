import 'package:plugin_pjmei_components/data/usecases/help/remote_get_list_questions_faq.dart';
import 'package:plugin_pjmei_components/domain/usecases/help/get_list_questions_faq.dart';

import '../../factories.dart';

GetListQuestionsFaq makeRemoteGetListQuestionsBySearchFaq({Map<String, dynamic>? params}) => RemoteGetListQuestionsFaq(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/knowledge/search', params: params),
);
