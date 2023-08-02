import 'package:plugin_pjmei_components/data/usecases/nota_fiscal/remote_list_notas_fiscais.dart';
import 'package:plugin_pjmei_components/domain/usecases/nota_fiscal/list_notas_fiscais.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListNotasFiscais makeRemoteListNotasFiscais() => RemoteListNotasFiscais(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/nota-fiscal')
);