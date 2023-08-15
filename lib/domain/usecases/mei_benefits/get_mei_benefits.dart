import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class GetMeiBenefits {
  Future<MeiBenefitsEntity> exec({bool log = false});
}