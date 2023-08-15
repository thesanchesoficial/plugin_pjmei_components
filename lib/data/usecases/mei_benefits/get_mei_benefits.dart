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
