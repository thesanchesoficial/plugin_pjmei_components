import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/update_category_financial_education.dart';
import '../../usecase/remote_update_category_financial_education.dart';

UpdateCategoryFinancialEducation makeRemoteUpdateCategoryFinancialEducation(String id) => RemoteUpdateCategoryFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/category')
);