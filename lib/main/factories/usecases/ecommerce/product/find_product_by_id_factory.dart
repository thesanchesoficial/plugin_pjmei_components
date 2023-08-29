import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

FindProductById makeRemoteFindProductById(String id) => RemoteFindProductById(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/produto/$id'));
