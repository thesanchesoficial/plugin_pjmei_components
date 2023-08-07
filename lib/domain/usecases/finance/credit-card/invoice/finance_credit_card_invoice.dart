import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class FinanceCreditCardInvoice {
  Future<bool> exec(FinanceCreditCardInvoiceEntity body, {bool log = false});
}
