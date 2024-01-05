import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/get_category.dart';
import '../../usecase/remote_get_category.dart';

GetCategoryFinancialEducation makeRemoteGetCategoryFinancialEducation({required String id, Map<String, dynamic>? params}) => RemoteGetCategoryFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/category/$id', params: params),
);
