import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/entity/check_if_user_exists_entity.dart';
import '../../domain/usecase/check_if_user_exists.dart';

class RemoteCheckIfUserExists implements CheckIfUserExists {
  RemoteCheckIfUserExists({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CheckIfUserExistsParams> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        ignoreToken: true,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        if(httpResponse['error']['errors'][0]['type'] == 'notFound') {
          throw DomainError.userNotFound;
        }
        throw httpResponse['error']['message'];
      }
      return CheckIfUserExistsParams.fromMap(httpResponse['success']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}