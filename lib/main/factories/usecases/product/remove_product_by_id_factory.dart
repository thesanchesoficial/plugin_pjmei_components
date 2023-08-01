import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

RemoveProductById makeRemoteRemoveProductById(String id) =>
    RemoteRemoveProductById(
        httpClient: makeHttpAdapter(), url: makeApiUrl('venver/produto/$id'));
