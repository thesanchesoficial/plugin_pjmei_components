import 'package:plugin_pjmei_components/data/cache/cache.dart';
import 'package:plugin_pjmei_components/data/http/http.dart';

class AuthorizeHttpClientDecorator implements HttpClient {

  AuthorizeHttpClientDecorator({
    required this.fetchSecureCacheStorage,
    required this.deleteSecureCacheStorage,
    required this.decoratee,
  });
  final FetchSecureCacheStorage fetchSecureCacheStorage;
  final DeleteSecureCacheStorage deleteSecureCacheStorage;
  final HttpClient decoratee;

  Future<dynamic> request({
    required String url,
    required String method,
    Map? body,
    Map? headers,
    bool newReturnErrorMsg = false
  }) async {
    try {
      final token = await fetchSecureCacheStorage.fetch('token');
      final authorizedHeaders = headers ?? {}..addAll({'x-access-token': token});
      return await decoratee.request(url: url, method: method, body: body, headers: authorizedHeaders);
    } catch(error) {
      if (error is HttpError && error != HttpError.forbidden) {
        rethrow;
      } else {
        await deleteSecureCacheStorage.delete('token');
        throw HttpError.forbidden;
      }
    }
  }
}