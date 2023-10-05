import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

InsertAddress makeRemoteAddAddress() => RemoteInsertAddress(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/address'),
);
