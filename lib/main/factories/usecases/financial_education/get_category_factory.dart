import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_get_category.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/get_category.dart';

import '../../factories.dart';

GetCategoryFinancialEducation makeRemoteGetCategoryFinancialEducation(
        {required String id, Map<String, dynamic>? params}) =>
    RemoteGetCategoryFinancialEducation(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('pjmei/category/$id', params: params),
    );
