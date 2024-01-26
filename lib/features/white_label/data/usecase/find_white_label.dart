import 'dart:developer';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/find_white_label.dart';

class RemoteFindWhiteLabel implements FindWhiteLabel {
  RemoteFindWhiteLabel({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<WhiteLabelEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
        ignoreToken: true,
      );
      p(httpResponse);
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return WhiteLabelEntity.fromMap(httpResponse['success']['whiteLabel']);
    } catch (e) {
      log(e.toString());
      throw e;
    }
  }
}
