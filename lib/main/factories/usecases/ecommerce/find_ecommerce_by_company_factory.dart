import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindEcommerce makeRemoteFindEcommerceByCompany(String id) => RemoteFindEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/ecommerce/company/$id'),
);
