import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/schedule_entity.dart';
import '../../domain/usecase/update_schedule.dart';

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
