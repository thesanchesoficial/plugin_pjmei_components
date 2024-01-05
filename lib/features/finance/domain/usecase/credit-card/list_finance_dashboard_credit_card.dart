import '../../entity/finance_dashboard_credit_card_entity.dart';

abstract class ListFinanceDashboardCreditCard {
  Future<FinanceDashboardCreditCardEntity> exec({bool log = false});
}
