import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListSalesOrders implements ListSalesOrders {
  RemoteListSalesOrders({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ReturnApiOrdersList> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ReturnApiOrdersList(
        count: int.tryParse(httpResponse['success']['count'].toString()) ?? 0,
        orders: ((httpResponse['success']['items']) as List)
            .map((e) => OrderEntity.fromMap(e))
            .toList(),
      );
    } on HttpError catch (_) {
      if (_ == HttpError.notFound) {
        throw HttpError.notFound;
      }
      throw DomainError.unexpected;
    }
  }
}
