import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddEcommerce makeRemoteAddEcommerce() => RemoteAddEcommerce(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/ecommerce'),
);
