import '../../../../data/http/http_client.dart';
import '../../domain/usecase/get_generate_withdrawals.dart';

class RemoteGenerateWithdrawals implements GetGenerateWithdrawals {
  final HttpClient httpClient;
  final String url;
  RemoteGenerateWithdrawals({required this.httpClient, required this.url});

  @override
  Future<bool> exec({Map<dynamic, dynamic>? body, bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: body,
        newReturnErrorMsg: true,
      );
      if (httpResponse != null && (httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return httpResponse == null;
    } catch (e) {
      throw e;
    }
  }
}
