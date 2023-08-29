import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_list_all_videos.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/list_all_videos.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListVideosFinancialEducation makeRemoteListVideosFinancialEducation(Map<String, dynamic> params) => RemoteListVideosFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/videos', params: params)
);