import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceBankInstitution {
  Future<List<FinanceBankInstitutionEntity>> exec({bool log = false});
}
