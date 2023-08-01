import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceCategory {
  Future<List<FinanceCategoryEntity>> exec();
}
