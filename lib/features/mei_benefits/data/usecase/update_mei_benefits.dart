import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/entity/mei_benefits_entity.dart';
import '../../domain/usecase/update_mei_benefits.dart';

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
      } else if(httpResponse is String) {
        throw httpResponse;
      } else if((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return MeiBenefitsEntity.fromMap(httpResponse['success']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
