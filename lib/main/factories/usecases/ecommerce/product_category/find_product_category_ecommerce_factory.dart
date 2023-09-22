import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindProductCategory makeRemoteFindProductCategory(String id) => RemoteFindProductCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/product-category/$id'),
);
