import '../entity/mei_benefits_entity.dart';

abstract class GetMeiBenefits {
  Future<MeiBenefitsEntity> exec({bool log = false});
}