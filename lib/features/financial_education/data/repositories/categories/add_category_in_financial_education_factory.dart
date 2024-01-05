import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/add_category_financial_education.dart';
import '../../usecase/remote_add_category_financial_education.dart';

AddCategoryFinancialEducation makeRemoteAddCategoryFinancialEducation() => RemoteAddCategoryFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/category')
);