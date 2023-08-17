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
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return MeiBenefitsEntity.fromMap(httpResponse['success']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
