import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class UpdateMeiBenefits {
  Future<MeiBenefitsEntity> exec({bool log = false});
}