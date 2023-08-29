import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_add_category_financial_education.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/add_category_financial_education.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddCategoryFinancialEducation makeRemoteAddCategoryFinancialEducation() => RemoteAddCategoryFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/category')
);