import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetCcmei implements GetCcmei {
  final HttpClient? httpClient;
  final String? url;

  RemoteGetCcmei({@required this.httpClient, @required this.url});

  Future<CcmeiEntity> exec({bool log = false}) async {
    try {
      final httpResponse =
          await httpClient!.request(url: url ?? '', method: 'get');
      return CcmeiEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
