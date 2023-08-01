import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListProductsByEstablishmentId makeRemoteListProductsByEstablishmentIdLojinha(
        String id,
        {Map<String, dynamic>? params}) =>
    RemoteListProductsByEstablishmentId(
        httpClient: makeHttpAdapter(),
        url: makeApiUrl('venver/produto/all-products/$id', params: params));
