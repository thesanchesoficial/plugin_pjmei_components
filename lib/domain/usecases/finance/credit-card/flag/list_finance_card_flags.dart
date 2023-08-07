import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceCardFlags {
  Future<List<FinanceCardFlagEntity>> exec({bool log = false});
}
