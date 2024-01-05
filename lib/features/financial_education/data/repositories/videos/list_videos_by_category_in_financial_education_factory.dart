import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/list_videos_by_category_in_financial_education.dart';
import '../../usecase/remote_list_videos_by_category_in_financial_education.dart';

GetListVideosByCategoryFinancialEducation makeRemoteGetListVideosByCategoryFinancialEducation({required String id, Map<String, dynamic>? params}) => RemoteGetListVideosByCategoryFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/videos/category/$id', params: params),
);
