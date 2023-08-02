import 'package:plugin_pjmei_components/data/usecases/modules/remote_delete_module.dart';
import 'package:plugin_pjmei_components/domain/usecases/modules/delete_module.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteModule makeRemoteDeleteVideoFinancialEducation(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/videos/$id')
);