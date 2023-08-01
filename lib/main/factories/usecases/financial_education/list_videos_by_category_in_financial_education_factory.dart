import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_list_videos_by_category_in_financial_education.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/list_videos_by_category_in_financial_education.dart';

import '../../factories.dart';

GetListVideosByCategoryFinancialEducation
    makeRemoteGetListVideosByCategoryFinancialEducation(
            {required String id, Map<String, dynamic>? params}) =>
        RemoteGetListVideosByCategoryFinancialEducation(
          httpClient: makeHttpAdapter(),
          url: makeApiUrl('pjmei/videos/$id/category', params: params),
        );
