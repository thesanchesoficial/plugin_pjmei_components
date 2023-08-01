import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_get_video.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/get_video.dart';

import '../../factories.dart';

GetVideoFinancialEducation makeRemoteGetVideoFinancialEducation(
        {required String id, Map<String, dynamic>? params}) =>
    RemoteGetVideoFinancialEducation(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('pjmei/videos/$id', params: params),
    );
