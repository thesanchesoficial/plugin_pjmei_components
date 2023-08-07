import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListAllDebtors {
  Future<DasYearsDebtorsDateEntity> exec(bool put, {bool log = false});
}
