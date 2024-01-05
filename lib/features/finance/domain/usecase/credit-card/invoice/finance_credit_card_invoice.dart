import '../../../entity/finance_credit_card_invoice_entity.dart';

abstract class FinanceCreditCardInvoice {
  Future<bool> exec(FinanceCreditCardInvoiceEntity body, {bool log = false});
}
