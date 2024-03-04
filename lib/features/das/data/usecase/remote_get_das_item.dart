import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/get_das_item.dart';

class RemoteGetDasItem implements GetDasItem {
  final HttpClient httpClient;
  final String url;

  RemoteGetDasItem({required this.httpClient, required this.url});

  Future<DasItemEntity> exec({required String year, required String month, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        newReturnErrorMsg: true,
        body: {
          'year': year,
          'month': month,
        }
      );
      if(httpResponse == null) {
        throw DomainError.waitingInfoSimples;
      } else if(httpResponse is String) {
        throw httpResponse;
      } else if((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      } else if (httpResponse == '') {
        throw 'Estamos obtendo os dados da guia DAS';
      }

      if(httpResponse['success']['das'] != null) {
        return DasItemEntity.fromMap(httpResponse['success']['das']);
      } else {
        return DasItemEntity.fromMap(httpResponse['success']);
      }
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
