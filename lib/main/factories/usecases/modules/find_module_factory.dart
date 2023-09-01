
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindModule makeRemoteFindModule(String id) => RemoteFindModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules/$id'),
);
