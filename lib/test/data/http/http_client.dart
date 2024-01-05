abstract class HttpClient {
  Future<dynamic> request({
    required String url,
    required String method,
    Map? body,
    Map? headers,
    bool newReturnErrorMsg = false,
    bool log = false,
    bool ignoreToken = false,
  });
}