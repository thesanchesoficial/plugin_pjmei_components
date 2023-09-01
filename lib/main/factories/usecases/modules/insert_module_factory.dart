import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddModule makeRemoteAddModule() => RemoteAddModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules'),
);
