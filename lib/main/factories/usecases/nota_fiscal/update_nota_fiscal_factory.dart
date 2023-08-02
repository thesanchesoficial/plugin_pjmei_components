import 'package:plugin_pjmei_components/data/usecases/nota_fiscal/remote_update_nota_fiscal.dart';
import 'package:plugin_pjmei_components/domain/usecases/nota_fiscal/update_nota_fiscal.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateNotaFiscal makeRemoteUpdateNotaFiscal(String id) => RemoteUpdateNotaFiscal(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/nota-fiscal/$id')
);