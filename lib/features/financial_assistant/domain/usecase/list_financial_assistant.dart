import '../entity/financial_assistant_entity.dart';

abstract class ListFinancialAssistant {
  Future<List<FinancialAssistantEntity>> exec({bool log = false});
}
