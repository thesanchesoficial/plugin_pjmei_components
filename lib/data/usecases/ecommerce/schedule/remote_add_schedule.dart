import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddSchedule implements AddSchedule {
  RemoteAddSchedule({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ScheduleEntity> exec(String? ecommerceId, String? productId, List<ScheduleEntity> data, {bool log = false}) async {
    final Map body = {
      "schedule": data.map((e) => e.toMap()).toList(),
    };

    if (ecommerceId == null){
      body['productId'] = productId;
    }

    if (productId == null){
      body['ecommerceId'] = ecommerceId;
    }
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: body,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      // if(httpResponse['success']['schedule'] != null) {
      //   return ScheduleEntity.fromMap(httpResponse['success']['schedule']);
      // }
      return ScheduleEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
