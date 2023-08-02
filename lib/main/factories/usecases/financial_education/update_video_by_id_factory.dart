import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_update_video_financial_education.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/update_video_financial_education.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateVideoFinancialEducation makeRemoteUpdateVideoFinancialEducation(String id) => RemoteUpdateVideoFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/videos')
);