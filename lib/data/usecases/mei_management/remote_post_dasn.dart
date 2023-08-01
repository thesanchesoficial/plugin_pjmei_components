import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/post_dasn.dart';

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
