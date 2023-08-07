import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetDasPdf implements GetDasPdf {
  final HttpClient? httpClient;
  final String? url;

  RemoteGetDasPdf({@required this.httpClient, @required this.url});

  Future<DasDataEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error') &&
          (httpResponse['error'] as Map<String, dynamic>)
              .containsKey('message')) {
        throw httpResponse['error']['message'];
      } else if ((httpResponse).containsKey('error')) {
        throw 'Erro interno do servidor.';
      }
      final DasDataEntity daspdf =
          DasDataEntity.fromMap(httpResponse['success']['dasData']);
      return daspdf;
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
