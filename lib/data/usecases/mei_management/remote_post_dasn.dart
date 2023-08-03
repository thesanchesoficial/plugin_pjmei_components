import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemotePostDasn implements PostDasn {
  final HttpClient? httpClient;
  final String? url;

  RemotePostDasn({this.httpClient, this.url});

  Future<Map<String, dynamic>> exec(DasnEntity params) async {
    try {
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: 'post',
        body: params.toMap(),
        newReturnErrorMsg: true,
      );

      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }

      return httpResponse['success'] as Map<String, dynamic>;
    } on HttpError catch (_) {
      throw 'Erro interno do servidor.';
    } catch (e) {
      throw e;
    }
  }
}
