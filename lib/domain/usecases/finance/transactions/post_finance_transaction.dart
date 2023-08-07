import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class PostFinanceTransaction {
  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity body, {bool log = false});
}
