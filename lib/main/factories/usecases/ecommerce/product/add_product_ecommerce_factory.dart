import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddProduct makeRemoteAddProduct() => RemoteAddProduct(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product'),
);
