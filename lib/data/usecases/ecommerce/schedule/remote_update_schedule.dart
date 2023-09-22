import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateSchedule implements UpdateSchedule {
  RemoteUpdateSchedule({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  @override
  Future<ScheduleEntity> exec(ScheduleEntity data, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: data.toMap(),
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if(httpResponse['success']['schedule'] != null) {
        return ScheduleEntity.fromMap(httpResponse['success']['schedule']);
      }
      return ScheduleEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
