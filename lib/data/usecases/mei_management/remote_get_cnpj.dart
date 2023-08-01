import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/get_cnpj.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';

class RemoteGetCnpj implements GetCnpj {
  final HttpClient? httpClient;
  final String? url;

  RemoteGetCnpj({@required this.httpClient, @required this.url});

  Future<CnpjEntity> exec() async {
    try {
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: 'get',
      );
      return CnpjEntity.fromMap(httpResponse['success']['result']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
