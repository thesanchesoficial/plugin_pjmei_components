import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceCreditCardCategory {
  Future<List<FinanceCreditCardCategoryEntity>> exec({bool log = false});
}
