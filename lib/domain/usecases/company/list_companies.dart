import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListCompanies {
  Future<List<CompanyEntity>> exec({bool log = false});
}
