import 'package:plugin_pjmei_components/data/usecases/financial_education/remote_list_all_categories.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/list_all_categories.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListCategoriesFinancialEducation makeRemoteListCategoriesFinancialEducation(Map<String, dynamic> params) => RemoteListCategoriesFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/category', params: params)
);