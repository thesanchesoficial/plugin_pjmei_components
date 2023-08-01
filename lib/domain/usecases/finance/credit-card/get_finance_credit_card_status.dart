import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetFinanceCreditCardStatus {
  Future<List<FinanceCreditCardStatusEntity>> exec();
}
