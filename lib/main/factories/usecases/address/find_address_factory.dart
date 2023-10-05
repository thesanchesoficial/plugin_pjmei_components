
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindAddress makeRemoteFindAddress(String id) => RemoteFindAddress(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/address/$id'),
);
