import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdateProduct makeRemoteUpdateProduct(String id) => RemoteUpdateProduct(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product/$id'),
);
