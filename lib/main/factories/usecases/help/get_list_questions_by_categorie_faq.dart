import 'package:plugin_pjmei_components/data/usecases/help/remote_get_list_questions_faq.dart';
import 'package:plugin_pjmei_components/domain/usecases/help/get_list_questions_faq.dart';

import '../../factories.dart';

GetListQuestionsFaq makeRemoteGetListQuestionsByCategorieFaq(
        {Map<String, dynamic>? params}) =>
    RemoteGetListQuestionsFaq(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/knowledge/question', params: params),
    );
