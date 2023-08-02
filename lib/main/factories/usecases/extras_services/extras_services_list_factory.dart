import 'package:plugin_pjmei_components/data/usecases/extras_services/remote_extras_services_list.dart';
import 'package:plugin_pjmei_components/domain/usecases/extras_services/extras_services_list.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ExtrasServicesList makeRemoteExtrasServicesList() => RemoteExtrasServicesList(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/extras-services')
);