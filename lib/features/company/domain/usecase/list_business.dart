import '../entity/list_company_result.dart';

abstract class ListBusines {
  Future<ListCompanyResult> exec({bool log = false});
}
