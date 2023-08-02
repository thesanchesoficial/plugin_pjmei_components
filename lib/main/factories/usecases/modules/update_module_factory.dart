import 'package:plugin_pjmei_components/data/usecases/modules/remote_update_module.dart';
import 'package:plugin_pjmei_components/domain/usecases/modules/update_module.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateModule makeRemoteUpdateModule() => RemoteUpdateModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/modules')
);