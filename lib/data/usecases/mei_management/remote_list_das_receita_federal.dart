import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/list_das_receita_federal.dart';

class RemoteListDasReceitaFederal implements ListDasReceitaFederal {
  final HttpClient? httpClient;
  final String? url;

  RemoteListDasReceitaFederal({@required this.httpClient, @required this.url});

  Future<List<DasDataEntity>> exec() async {
    try {
      // print(url);
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: 'put',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error') &&
          (httpResponse['error'] as Map<String, dynamic>)
              .containsKey('message')) {
        throw httpResponse['error']['message'];
      } else if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
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
