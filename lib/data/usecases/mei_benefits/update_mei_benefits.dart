import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateMeiBenefits implements UpdateMeiBenefits {
  final HttpClient httpClient;
  final String url;
  RemoteUpdateMeiBenefits({required this.httpClient, required this.url});

  Future<MeiBenefitsEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'put',
        newReturnErrorMsg: true,
      );
      if(httpResponse == null) {
        throw DomainError.waitingInfoSimples;
      }
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        if(httpResponse['error']['errors'][0]['type'] == "no_mei") {
          throw DomainError.noMei;
        }
        throw httpResponse['error']['message'];
      }
      return MeiBenefitsEntity.fromMap(httpResponse['success']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
