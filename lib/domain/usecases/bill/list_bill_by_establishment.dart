import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListBillByEstablishment {
  Future<List<BillEntity>> exec({bool log = false});
}