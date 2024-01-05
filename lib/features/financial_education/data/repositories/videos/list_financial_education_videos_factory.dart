import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/list_all_videos.dart';
import '../../usecase/remote_list_all_videos.dart';

ListVideosFinancialEducation makeRemoteListVideosFinancialEducation(Map<String, dynamic> params) => RemoteListVideosFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/videos', params: params)
);