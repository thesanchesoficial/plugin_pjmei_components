import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/kyc_details_entity.dart';
import '../../domain/usecase/get_kyc_details.dart';

class RemoteGenerateKycLink implements GetKycDetails {
  final HttpClient httpClient;
  final String url;
  RemoteGenerateKycLink({required this.httpClient, required this.url});

  @override
  Future<KycDetails> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['kyc'] != null) {
        return KycDetails.fromMap(httpResponse['success']['kyc']);
      } else {
        return KycDetails.fromMap(httpResponse['success']);
      }
    } catch (e) {
      throw e;
    }
  }
}
