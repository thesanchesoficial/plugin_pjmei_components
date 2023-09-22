import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdateProductCategory makeRemoteUpdateProductCategory(String id) => RemoteUpdateProductCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category/$id'),
);
