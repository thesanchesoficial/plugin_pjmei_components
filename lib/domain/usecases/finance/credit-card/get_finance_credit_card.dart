import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetFinanceCreditCard {
  Future<List<FinanceCreditCardEntity>> exec();
}
