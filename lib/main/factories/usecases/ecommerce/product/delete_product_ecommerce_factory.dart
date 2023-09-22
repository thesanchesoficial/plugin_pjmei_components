import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteModule makeRemoteDeleteProduct(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product/$id'),
);