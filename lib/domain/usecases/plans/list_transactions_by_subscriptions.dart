import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListTransactionsBySubscriptions {
  Future<List<TransactionEntity>> exec({bool log = false});
}
