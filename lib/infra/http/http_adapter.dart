import 'dart:convert';
import 'package:http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/auth/refresh_token.dart';
import 'package:plugin_pjmei_components/main/factories/usecases/auth/new_refresh_token.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class HttpAdapter implements HttpClient {

  HttpAdapter(this.client);
  final Client client;

  Future<dynamic> request({
    required String url, 
    required String method, 
    Map? body, 
    Map? headers,
    bool newReturnErrorMsg = false,
    bool log = false,
    bool ignoreToken = false,
  }) async {
    Map<String, String> defaultHeaders = {};

    if(!ignoreToken) {
      if (userSM.user?.accessToken != null) {
        if (JwtDecoder.isExpired(userSM.user!.accessToken ?? "")) {
          try {
            RefreshTokenEntity tokenTemp = await _newToken();
            userSM.user = userSM.user!.copyWith(
              accessToken: tokenTemp.accessToken,
              refreshToken: tokenTemp.refreshToken,
            );
          } catch (e) {
            throw HttpError.serverError;
          }
        }
      }
    }

    if(!url.contains('pjmei.app/_functions/')) {
      defaultHeaders = headers?.cast<String, String>() ?? {}..addAll({
        'accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userSM.user?.accessToken}',
        'company': '${companySM.company?.id}',
        'x-api-key': Environment.current!.apiKey,
      });
    }
    final jsonBody = body != null ? jsonEncode(body) : null;
    var response = Response('', 500);
    Future<Response>? futureResponse;
    try {
      if (method == 'post') {
        futureResponse = client.post(Uri.parse(url), headers: defaultHeaders, body: jsonBody);
      } else if (method == 'get') {
        futureResponse = client.get(Uri.parse(url), headers: defaultHeaders);
      } else if (method == 'put') {
        futureResponse = client.put(Uri.parse(url), headers: defaultHeaders, body: jsonBody);
      } else if (method == 'delete') {
        futureResponse = client.delete(Uri.parse(url), headers: defaultHeaders);
      }
      if (futureResponse != null) {
        response = await futureResponse.timeout(const Duration(seconds: 40));
      }
    } catch(error) {
      throw HttpError.serverError;
    }
    if(log) {
      p('body: ${response.statusCode}');
      p('body: ${response.body}');
    } else if(!hidePrintApplication) {
      p('body: ${response.statusCode}');
      p('body: ${response.body}');
    }
    OwBotToast.close();
    return _handleResponse(response, newReturnErrorMsg);
  }

  dynamic _handleResponse(Response response, bool newReturnErrorMsg) {
    switch (response.statusCode) {
      case 200: return response.body.isEmpty ? null : jsonDecode(response.body);
      case 201: return response.body.isEmpty ? null : jsonDecode(response.body);
      case 204: return response.body.isEmpty ? null : jsonDecode(response.body);
      case 400: {
        if(newReturnErrorMsg) {
          if(response.body.isEmpty) {
            throw HttpError.badRequest;
          } else {
            return jsonDecode(response.body);
          }
        } else {
          throw HttpError.badRequest;
        }
      }
      case 401: {
        if(newReturnErrorMsg) {
          if(response.body.isEmpty) {
            throw HttpError.unauthorized;
          } else {
            return jsonDecode(response.body);
          }
        } else {
          throw HttpError.unauthorized;
        }
      }
      case 403: {
        if(newReturnErrorMsg) {
          if(response.body.isEmpty) {
            throw HttpError.forbidden;
          } else {
            return jsonDecode(response.body);
          }
        } else {
          throw HttpError.forbidden;
        }
      }
      case 404: {
        if(newReturnErrorMsg) {
          if(response.body.isEmpty) {
            throw HttpError.notFound;
          } else {
            return jsonDecode(response.body);
          }
        } else {
          throw HttpError.notFound;
        }
      }
      default: {
        if(newReturnErrorMsg) {
          if(response.body.isEmpty) {
            throw HttpError.serverError;
          } else {
            return jsonDecode(response.body);
          }
        } else {
          throw HttpError.serverError;
        }
      }
    }
  }

  Future<RefreshTokenEntity> _newToken() async {
    try {
      RefreshTokenEntity token = await makeRefreshToken().exec();
      return token;
    } catch (e) {
      throw e;
    }
  }

}