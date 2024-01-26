import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:pjmei_white_label_dependencies/pjmei_white_label_dependencies.dart';

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
    if(ignoreToken) {
      p('Ignorando token.');
    } else {
      if (userSM.user?.accessToken != null) {
        if (JwtDecoder.isExpired(userSM.user!.accessToken ?? "")) {
          try {
            await _newToken();
          } catch (e) {
            userSM.user = null;
            navigatorKey.currentContext?.go(logoutRedirect);
            throw HttpError.serverError;
          }
        }
      }
    }


    if(!url.contains('pjmei.app/_functions/')) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      final test = await deviceInfo.deviceInfo;
      String? userAgent;
      Map<String, String> info = {};
      if(kIsWeb) {
        WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
        userAgent = webBrowserInfo.userAgent;
        info = {
          "browserName": webBrowserInfo.browserName.name,
          "appName": webBrowserInfo.appName ?? '',
          "language": webBrowserInfo.language ?? '',
          "platform": webBrowserInfo.platform ?? '',
          "userAgent": webBrowserInfo.userAgent ?? '',
        };
      } else {
        if(Platform.isAndroid) {
          AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
          info = {
            "device": androidInfo.device,
            "brand": androidInfo.brand,
            "serialNumber": androidInfo.serialNumber,
            "version.codename": androidInfo.version.codename,
            "version.incremental": androidInfo.version.incremental,
            "version.sdkInt": androidInfo.version.sdkInt.toString(),
            "version.baseOS": androidInfo.version.baseOS ?? '',
            "hardware": androidInfo.hardware,
            "fingerprint": androidInfo.fingerprint,
            "id": androidInfo.id,
            "model": androidInfo.model,
            "isPhysicalDevice": androidInfo.isPhysicalDevice.toString(),
          };
        } else if(Platform.isIOS) {
          IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
          info = {
            "name": iosInfo.name,
            "systemName": iosInfo.systemName,
            "systemVersion": iosInfo.systemVersion,
            "model": iosInfo.model,
            "localizedModel": iosInfo.localizedModel,
            "utsname.release": iosInfo.utsname.release,
            "utsname.sysname": iosInfo.utsname.sysname,
            "utsname.version": iosInfo.utsname.version,
            "utsname.machine": iosInfo.utsname.machine,
            "utsname.nodename": iosInfo.utsname.nodename,
            "isPhysicalDevice": iosInfo.isPhysicalDevice.toString(),
          };
        }
      }
      String? data;
      try {
        data = jsonEncode(test.data);
      } catch (e) {
        //
      }
      defaultHeaders = headers?.cast<String, String>() ?? {}..addAll({
        'accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userSM.user?.accessToken}',
        'X-Pjmei-Environment': '${WhiteLabelEntity.current?.id}',
        'X-Info': '${jsonEncode(info)}',
        'X-Pjmei-Version': '$minimalVersion',
        'X-Pjmei-Company': '${companySM.company?.id}',
        'X-Pjmei-Ecommerce': '${ecommerceSM.establishment?.id}',
        'x-api-key': '${Environment.current?.apiKey}',
      });
      if(Valid.text(userAgent)) {
        defaultHeaders.addAll({
          'User-Agent': '${userAgent}',
        });
      }
      if(Valid.text(data)) {
        defaultHeaders.addAll({
          'x-device-info': '$data',
        });
      }
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
      p('statusCode: ${response.statusCode}');
      p('body: ${response.body}');
    } else if(!hidePrintApplication) {
      p('statusCode: ${response.statusCode}');
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
      case 406: {
        if(newReturnErrorMsg) {
          if(response.body.isEmpty) {
            throw HttpError.notAcceptable;
          } else {
            return jsonDecode(response.body);
          }
        } else {
          throw HttpError.notAcceptable;
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

  Future<UserEntity> _newToken() async {
    try {
      UserEntity user = await Api.auth.newRefreshToken();
      userSM.setUser(user);
      checkUserNotifier.value = userSM.user;
      return user;
    } catch (e) {
      userSM.user = null;
      throw e;
    }
  }

}