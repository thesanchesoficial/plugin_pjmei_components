import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class UpdateFinanceCardFlags {
  Future<FinanceCardFlagEntity> exec({bool log = false});
}
