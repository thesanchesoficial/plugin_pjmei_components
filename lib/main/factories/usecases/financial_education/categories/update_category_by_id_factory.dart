import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_update_category_financial_education.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/update_category_financial_education.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateCategoryFinancialEducation makeRemoteUpdateCategoryFinancialEducation(String id) => RemoteUpdateCategoryFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/category')
);