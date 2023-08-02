import 'package:plugin_pjmei_components/data/usecases/extras_services/remote_update_category_extras_services.dart';
import 'package:plugin_pjmei_components/domain/usecases/extras_services/update_category_extras_services.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateCategoryExtrasServices makeRemoteUpdateCategoryExtrasServices(String id) => RemoteUpdateCategoryExtrasServices(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/extras-services')
);