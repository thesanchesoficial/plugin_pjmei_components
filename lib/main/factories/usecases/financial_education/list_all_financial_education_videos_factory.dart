import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_list_all_financial_education_videos.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/list_all_financial_education_videos.dart';

import '../../factories.dart';

GetListVideosFinancialEducation makeRemoteGetListVideosFinancialEducation(
        {Map<String, dynamic>? params}) =>
    RemoteGetListVideosFinancialEducation(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('pjmei/videos', params: params),
    );
