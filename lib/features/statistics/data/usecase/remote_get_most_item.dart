import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/statistics_most_item_entity.dart';
import '../../domain/usecase/get_statistics_most_item.dart';

class RemoteGetStatisticsMostItem implements GetStatisticsMostItem {
  RemoteGetStatisticsMostItem({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<StatisticsMostItemEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return (httpResponse["success"] as List).map((e) => StatisticsMostItemEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
