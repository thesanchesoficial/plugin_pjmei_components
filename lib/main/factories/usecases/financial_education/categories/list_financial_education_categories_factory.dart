import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_list_financial_education_categories.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/list_financial_education_categories.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetListCategoriesFinancialEducation makeRemoteGetListCategoriesFinancialEducation({Map<String, dynamic>? params}) => RemoteGetListCategoriesFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/category', params: params),
);
