import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

InsertCompany makeRemoteInsertCompany() => RemoteInsertCompany(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company')
);