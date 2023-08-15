import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

FindCompany makeRemoteFindCompany(String id) => RemoteFindCompany(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/empresa/consultar/$id')
);