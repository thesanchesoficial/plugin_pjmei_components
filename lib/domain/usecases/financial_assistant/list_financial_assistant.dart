import 'package:plugin_pjmei_components/domain/entities/financial_assistant_entity.dart';

abstract class ListFinancialAssistant {
  Future<List<FinancialAssistantEntity>> exec();
}
