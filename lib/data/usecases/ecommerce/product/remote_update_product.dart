import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateProduct implements UpdateProduct {
  RemoteUpdateProduct({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  @override
  Future<ProductEcommerceEntity> exec(ProductEcommerceEntity data, {bool log = false}) async {
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
      if(httpResponse['success']['product'] != null) {
        return ProductEcommerceEntity.fromMap(httpResponse['success']['product']);
      }
      return ProductEcommerceEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
