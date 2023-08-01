import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/get_ccmei.dart';

class RemoteGetCcmei implements GetCcmei {
  final HttpClient? httpClient;
  final String? url;

  RemoteGetCcmei({@required this.httpClient, @required this.url});

  Future<CcmeiEntity> exec() async {
    try {
      final httpResponse =
          await httpClient!.request(url: url ?? '', method: 'get');
      return CcmeiEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
