import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddProductCategory makeRemoteAddProductCategory() => RemoteAddProductCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category'),
);
