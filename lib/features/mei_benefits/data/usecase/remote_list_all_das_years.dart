import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/list_all_das_years.dart';

class RemoteListAllDasYears implements ListAllDasYears {
  final HttpClient? httpClient;
  final String? url;

  RemoteListAllDasYears({@required this.httpClient, @required this.url});

  Future<BeneficiosEntity> exec(bool put, {bool log = false}) async {
    try {
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: put ? 'put' : 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error') &&
          (httpResponse['error'] as Map<String, dynamic>)
              .containsKey('message')) {
        throw httpResponse['error']['message'];
      } else if ((httpResponse).containsKey('error')) {
        throw 'Erro interno do servidor.';
      }
      return BeneficiosEntity.fromMap(httpResponse['success']);
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}
