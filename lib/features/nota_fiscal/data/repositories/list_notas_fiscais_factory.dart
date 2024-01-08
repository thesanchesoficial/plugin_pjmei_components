import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_notas_fiscais.dart';
import '../usecase/remote_list_notas_fiscais.dart';

ListNotasFiscais makeRemoteListNotasFiscais() => RemoteListNotasFiscais(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification')
);