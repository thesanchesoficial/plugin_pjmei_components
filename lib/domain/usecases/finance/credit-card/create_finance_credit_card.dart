import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class CreateFinanceCreditCard {
  Future<bool> exec(FinanceCreditCardEntity params);
}
