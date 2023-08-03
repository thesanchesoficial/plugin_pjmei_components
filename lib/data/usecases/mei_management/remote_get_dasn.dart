import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetDasn implements GetDasn {
  final HttpClient? httpClient;
  final String? url;

  RemoteGetDasn({@required this.httpClient, @required this.url});

  Future<List<DasnEntity>> exec() async {
    try {
      final httpResponse = await httpClient?.request(
        url: url ?? '',
        method: 'get',
      );
      // print(httpResponse["success"]);
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }

      return ((httpResponse['success']['dasn']) as List)
          .map((e) => DasnEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw 'Erro interno do servidor.';
    } catch (e) {
      throw e;
    }
  }
}
