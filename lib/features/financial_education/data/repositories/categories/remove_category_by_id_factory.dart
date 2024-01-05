import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../modules/data/usecase/remote_delete_module.dart';
import '../../../../modules/domain/usecase/delete_module.dart';

DeleteModule makeRemoteDeleteCategoryFinancialEducation(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/category/$id')
);