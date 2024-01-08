import '../entity/finance_dashboard_basic_entity.dart';
import '../entity/finance_dashboard_entity.dart';
import '../entity/finance_filter_entity.dart';

abstract class ListFinanceDashboardBasic {
  Future<FinanceDashboardBasicEntity> exec({bool log = false});
}

abstract class ListFinanceDashboardBanks {
  Future<FinanceDashboardEntity> exec({bool log = false});
}

abstract class ListFinanceDashboardByFilterBasic {
  Future<FinanceDashboardBasicEntity> exec(FinanceFilterEntity filter);
}

