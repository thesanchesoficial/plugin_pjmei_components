import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/get_video.dart';
import '../../usecase/remote_get_video.dart';

GetVideoFinancialEducation makeRemoteGetVideoFinancialEducation({required String id, Map<String, dynamic>? params}) => RemoteGetVideoFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/videos/$id', params: params),
);
