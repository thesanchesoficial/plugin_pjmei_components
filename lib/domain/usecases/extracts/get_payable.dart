import 'package:plugin_pjmei_components/domain/entities/payable_entity.dart';

abstract class GetPayable {
  Future<PayableEntity> exec();
}
