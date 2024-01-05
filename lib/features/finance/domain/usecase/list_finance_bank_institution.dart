import '../entity/finance_bank_institution_entity.dart';

abstract class ListFinanceBankInstitution {
  Future<List<FinanceBankInstitutionEntity>> exec({bool log = false});
}
