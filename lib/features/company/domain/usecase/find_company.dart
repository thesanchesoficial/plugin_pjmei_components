import '../entity/company_entity.dart';

abstract class FindCompany {
  Future<CompanyEntity> exec({bool log = false});
}
