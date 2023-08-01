import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateProductById makeRemoteUpdateProductById(String id) =>
    RemoteUpdateProductById(
        httpClient: makeHttpAdapter(), url: makeApiUrl('venver/produto/$id'));
