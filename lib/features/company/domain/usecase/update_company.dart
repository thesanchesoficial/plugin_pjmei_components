import '../entity/company_entity.dart';

abstract class UpdateCompany {
  Future<CompanyEntity> exec(CompanyEntity user, {bool log = false});
}