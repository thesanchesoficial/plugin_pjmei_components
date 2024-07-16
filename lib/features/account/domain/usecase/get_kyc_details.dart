import 'package:plugin_pjmei_components/features/account/domain/entity/kyc_details_entity.dart';

abstract class GetKycDetails {
  Future<KycDetails> exec({bool log = false});
}
