import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceCategory makeRemoteListFinanceCategory(String type) => RemoteListFinanceCategory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/category-and-subcategory', params: {'type': type}),
);