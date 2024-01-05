import '../entity/ccmei_entity.dart';

abstract class GetCcmei {
  Future<CcmeiEntity> exec({bool log = false});
}
