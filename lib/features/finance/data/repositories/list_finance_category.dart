import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_finance_category.dart';
import '../usecase/remote_list_finance_category.dart';

ListFinanceCategory makeRemoteListFinanceCategory(String type) => RemoteListFinanceCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/category-and-subcategory', params: {'type': type}),
);