import '../entity/company_entity.dart';

abstract class ListCompanies {
  Future<List<CompanyEntity>> exec({bool log = false});
}
