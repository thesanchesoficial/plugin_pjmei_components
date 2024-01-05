import '../entity/mei_benefits_entity.dart';

abstract class UpdateMeiBenefits {
  Future<MeiBenefitsEntity> exec({bool log = false});
}