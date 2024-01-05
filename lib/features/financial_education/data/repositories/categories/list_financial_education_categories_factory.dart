import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/list_financial_education_categories.dart';
import '../../usecase/remote_list_financial_education_categories.dart';

GetListCategoriesFinancialEducation makeRemoteGetListCategoriesFinancialEducation({Map<String, dynamic>? params}) => RemoteGetListCategoriesFinancialEducation(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('pjmei/financial-education/category', params: params),
);
