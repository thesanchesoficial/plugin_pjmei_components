import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateProductCategory implements UpdateProductCategory {
  RemoteUpdateProductCategory({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  @override
  Future<ProductCategoryEcommerceEntity> exec(ProductCategoryEcommerceEntity data, {bool log = false}) async {
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
      if(httpResponse['success']['productCategory'] != null) {
        return ProductCategoryEcommerceEntity.fromMap(httpResponse['success']['productCategory']);
      }
      return ProductCategoryEcommerceEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
