import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListCategoriesOfExtraServices makeRemoteListCategoriesOfExtraServices() =>
    RemoteListCategoriesOfExtraServices(
        httpClient: makeHttpAdapter(),
        url: makeApiUrl('pjmei/extras-services'));
