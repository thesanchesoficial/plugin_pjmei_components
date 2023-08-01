import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListProductsByEstablishmentId makeRemoteListProductsByEstablishmentId(
        String id) =>
    RemoteListProductsByEstablishmentId(
        httpClient: makeHttpAdapter(),
        url: makeApiUrl('venver/produto/estabelecimento/all-products/$id'));
