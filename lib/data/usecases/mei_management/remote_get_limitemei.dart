import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetLimiteMei implements GetLimiteMei {
  final HttpClient? httpClient;
  final String? url;

  RemoteGetLimiteMei({@required this.httpClient, @required this.url});

  Future<LimiteMeiEntity> exec() async {
    try {
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: 'get',
      );
      return LimiteMeiEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
