import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListProductsByExtrasServicesId makeRemoteListProductsByExtrasServicesId(
        String id) =>
    RemoteListProductsByExtrasServicesId(
        httpClient: makeHttpAdapter(),
        url: makeApiUrl('pjmei/extras-services/$id'));
