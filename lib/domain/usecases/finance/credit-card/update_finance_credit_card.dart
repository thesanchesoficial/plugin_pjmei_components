import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class UpdateFinanceCreditCard {
  Future<bool> exec(FinanceCreditCardEntity params, {bool log = false});
}
