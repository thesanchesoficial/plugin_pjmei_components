import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListDasData implements ListDasData {
  final HttpClient? httpClient;
  final String? url;

  RemoteListDasData({@required this.httpClient, @required this.url});

  Future<List<DasDataEntity>> exec() async {
    try {
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error') &&
          (httpResponse['error'] as Map<String, dynamic>)
              .containsKey('message')) {
        throw httpResponse['error']['message'];
      } else if ((httpResponse).containsKey('error')) {
        throw 'Erro interno do servidor.';
      }
      return ((httpResponse['success']['dasData']) as List)
          .map((e) => DasDataEntity.fromMap(e))
          .toList();
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
