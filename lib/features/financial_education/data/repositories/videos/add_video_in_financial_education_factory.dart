import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/add_video_financial_education.dart';
import '../../usecase/remote_add_video_financial_education.dart';

AddVideoFinancialEducation makeRemoteAddVideoFinancialEducation() => RemoteAddVideoFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/videos')
);