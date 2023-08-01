import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/help/get_list_questions_faq.dart';

class RemoteGetListQuestionsFaq implements GetListQuestionsFaq {
  RemoteGetListQuestionsFaq({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<HelpQuestionFaqEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      try {
        return (httpResponse['success']['knowledgeQuestions']['items'] as List)
            .map((e) => HelpQuestionFaqEntity.fromMap(e))
            .toList();
      } catch (e) {
        throw DomainError.unexpected;
      }
    } catch (error) {
      throw error;
    }
  }
}
