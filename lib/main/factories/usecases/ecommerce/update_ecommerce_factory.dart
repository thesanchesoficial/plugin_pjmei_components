import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdateEcommerce makeRemoteUpdateEcommerce(String id) => RemoteUpdateEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/ecommerce/$id'),
);
