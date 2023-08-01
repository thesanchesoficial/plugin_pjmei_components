import 'package:plugin_pjmei_components/domain/entities/payable_entity.dart';

abstract class ListPayables {
  Future<List<PayableEntity>> exec();
}
