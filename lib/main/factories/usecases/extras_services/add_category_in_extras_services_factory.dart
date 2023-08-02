import 'package:plugin_pjmei_components/data/usecases/extras_services/remote_add_category_extras_services.dart';
import 'package:plugin_pjmei_components/domain/usecases/extras_services/add_category_extras_services.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddCategoryExtrasServices makeRemoteAddCategoryExtrasServices() => RemoteAddCategoryExtrasServices(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/extras-services')
);