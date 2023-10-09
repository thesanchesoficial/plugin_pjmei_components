import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetMeiBenefits implements GetMeiBenefits {
  final HttpClient httpClient;
  final String url;
  RemoteGetMeiBenefits({required this.httpClient, required this.url});

  Future<MeiBenefitsEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        if(httpResponse['error']['errors'][0]['type'] == "no_mei") {
          throw DomainError.noMei;
        }
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success'] == null) {
        throw DomainError.waitingInfoSimples;
      }
      return MeiBenefitsEntity.fromMap(httpResponse['success']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
