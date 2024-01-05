import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/update_video_financial_education.dart';
import '../../usecase/remote_update_video_financial_education.dart';

UpdateVideoFinancialEducation makeRemoteUpdateVideoFinancialEducation(String id) => RemoteUpdateVideoFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/videos')
);