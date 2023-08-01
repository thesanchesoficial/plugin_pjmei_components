import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

InsertProduct makeRemoteInsertProduct(String id) => RemoteInsertProduct(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/produto'));
