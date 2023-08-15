import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class FindCompany {
  Future<CompanyEntity> exec({bool log = false});
}
